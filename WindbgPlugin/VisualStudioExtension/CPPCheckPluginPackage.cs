using System;
using System.Diagnostics;
using System.Globalization;
using System.Runtime.InteropServices;
using System.ComponentModel.Design;
using Microsoft;
using Grpc.Core.Api;
using Grpc.Core;
using LinkCommand;
using Microsoft.VisualStudio;
using Microsoft.VisualStudio.Shell.Interop;
using Microsoft.VisualStudio.Shell;
using EnvDTE;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using System.Threading;
using Task = System.Threading.Tasks.Task;
using System.Threading.Tasks;
using System.IO;
using VSPackage.CPPCheckPlugin.Properties;
using VSIXProject1;
namespace VSPackage.CPPCheckPlugin
{
    public class CachedInformation
    {
        public List<Problem> problems = new List<Problem>();
        public string output = "";
        public bool isFinished = false;
    };

    [PackageRegistration(UseManagedResourcesOnly = true, AllowsBackgroundLoading = true)]
    [DefaultRegistryRoot(@"Software\Microsoft\VisualStudio\11.0")]
    [ProvideAutoLoad(VSConstants.UICONTEXT.SolutionExists_string, PackageAutoLoadFlags.BackgroundLoad)]
    // This attribute is used to register the information needed to show this package
    // in the Help/About dialog of Visual Studio.
    [InstalledProductRegistration("#110", "#112", "1.2.0", IconResourceID = 400)]
    // This attribute is needed to let the shell know that this package exposes some menus.
    [ProvideMenuResource("Menus.ctmenu", 1)]
    [ProvideToolWindow(typeof(MainToolWindow), Style = VsDockStyle.Tabbed, Window = ToolWindowGuids.Outputwindow, MultiInstances = false, Transient = false)]
    [Guid(GuidList.guidCPPCheckPluginPkgString)]
    public sealed class CPPCheckPluginPackage : AsyncPackage
    {
        public CPPCheckPluginPackage()
        {
            _instance = this;

            CreateDefaultGlobalSuppressions();
        }

        public static CPPCheckPluginPackage Instance
        {
            get { return _instance; }
        }

        public static async void addTextToOutputWindow(string text, bool shouldClear = false)
        {
            try
            {
                Assumes.NotNull(Instance._outputPane);
                await Instance.JoinableTaskFactory.SwitchToMainThreadAsync();
                if (shouldClear)
                {
                    Instance._outputPane.Activate();
                    Instance._outputPane.Clear();
                }
                Instance._outputPane.OutputString(text + "\n");
            }
            catch (Exception e)
            {
                Debug.WriteLine("Exception in addTextToOutputWindow(): " + e.Message);
            }
        }

        public static async void ClearOutputWindow()
        {
            try
            {
                await Instance.JoinableTaskFactory.SwitchToMainThreadAsync();

                Assumes.NotNull(Instance._outputPane);
                Instance._outputPane.Clear();
            }
            catch (Exception e)
            {
                Debug.WriteLine("Exception in ClearOutputWindow(): " + e.Message);
            }
        }

        public static String solutionName()
        {
            return _instance.JoinableTaskFactory.Run<string>(async () =>
            {
                await _instance.JoinableTaskFactory.SwitchToMainThreadAsync();
                try { return Path.GetFileNameWithoutExtension(_dte.Solution.FullName); }
                catch (Exception) { return ""; }
            });
        }

        public static String solutionPath()
        {
            return _instance.JoinableTaskFactory.Run<string>(async () =>
            {
                await _instance.JoinableTaskFactory.SwitchToMainThreadAsync();
                try { return Path.GetDirectoryName(_dte.Solution.FullName); }
                catch (Exception) { return ""; }
            });
        }

        public static async Task<String> activeProjectNameAsync()
        {
            var project = await _instance.activeProjectAsync();
            return project != null ? project.Name : "";
        }

        public static async Task<string> activeProjectPathAsync()
        {
            var project = await _instance.activeProjectAsync();
            if (project != null)
            {
                String projectDirectory = project.ProjectDirectory;
                return projectDirectory.Replace("\"", "");
            }

            return "";
        }

        private async Task<dynamic> activeProjectAsync()
        {
            await JoinableTaskFactory.SwitchToMainThreadAsync();

            Object[] activeProjects = (Object[])_dte.ActiveSolutionProjects;
            if (!activeProjects.Any())
            {
                return null;
            }

            foreach (dynamic project in activeProjects)
            {
                if (!isVisualCppProject(project.Kind))
                {
                    return null;
                }
                return project.Object;
            }

            return null;
        }

        #region Package Members

        private void CommandEvents_BeforeExecute(string Guid, int ID, object CustomIn, object CustomOut, ref bool CancelDefault)
        {
            if (ID == commandEventIdSave || ID == commandEventIdSaveAll)
            {
                if (Settings.Default.CheckSavedFilesHasValue && Settings.Default.CheckSavedFiles == true)
                {
                    // Stop running analysis to prevent a save dialog pop-up
                }
            }
        }

        protected override async Task InitializeAsync(CancellationToken cancellationToken, IProgress<ServiceProgressData> progress)
        {
            // Switches to the UI thread in order to consume some services used in command initialization
            await JoinableTaskFactory.SwitchToMainThreadAsync(cancellationToken);

            Debug.WriteLine(string.Format(CultureInfo.CurrentCulture, "Entering Initialize() of: {0}", this.ToString()));
            _runningDocTableEvents = new RunningDocTableEvents(this);
            _runningDocTableEvents.BeforeSave += documentSavedSync;
            _dte = await GetServiceAsync(typeof(DTE)) as DTE;
            Assumes.Present(_dte);
            if (_dte == null)
                return;

            _eventsHandlers = _dte.Events.DocumentEvents;

            _commandEventsHandlers = _dte.Events.CommandEvents;
            _commandEventsHandlers.BeforeExecute += new _dispCommandEvents_BeforeExecuteEventHandler(CommandEvents_BeforeExecute);

            var outputWindow = (OutputWindow)_dte.Windows.Item(EnvDTE.Constants.vsWindowKindOutput).Object;
            _outputPane = outputWindow.OutputWindowPanes.Add("cppcheck analysis output");

            AnalyzerCppcheck cppcheckAnalayzer = new AnalyzerCppcheck();
            cppcheckAnalayzer.ProgressUpdated += checkProgressUpdated;
            _analyzers.Add(cppcheckAnalayzer);

            if (String.IsNullOrEmpty(Settings.Default.DefaultArguments))
                Settings.Default.DefaultArguments = CppcheckSettings.DefaultArguments;

            // Add our command handlers for menu (commands must exist in the .vsct file)
            OleMenuCommandService mcs = await GetServiceAsync(typeof(IMenuCommandService)) as OleMenuCommandService;
            if (null != mcs)
            {
                {
                    // Create the command for the settings window
                    CommandID settingsWndCmdId = new CommandID(GuidList.guidCPPCheckPluginCmdSet, (int)PkgCmdIDList.cmdidSettings);
                    MenuCommand menuSettings = new MenuCommand(onSettingsWindowRequested, settingsWndCmdId);
                    mcs.AddCommand(menuSettings);
                }

                {
                    CommandID stopCheckMenuCommandID = new CommandID(GuidList.guidCPPCheckPluginCmdSet, (int)PkgCmdIDList.cmdidStopCppcheck);
                    MenuCommand stopCheckMenuItem = new MenuCommand(onStopCheckRequested, stopCheckMenuCommandID);
                    mcs.AddCommand(stopCheckMenuItem);
                }

                {
                    CommandID selectionsMenuCommandID = new CommandID(GuidList.guidCPPCheckPluginCmdSet, (int)PkgCmdIDList.cmdidCheckMultiItemCppcheck);
                    MenuCommand selectionsMenuItem = new MenuCommand(onCheckSelectionsRequested, selectionsMenuCommandID);
                    mcs.AddCommand(selectionsMenuItem);
                }


                {
                    CommandID projectsMenuCommandID = new CommandID(GuidList.guidCPPCheckPluginMultiProjectCmdSet, (int)PkgCmdIDList.cmdidCheckProjectsCppcheck);
                    MenuCommand projectsMenuItem = new MenuCommand(onCheckAllProjectsRequested, projectsMenuCommandID);
                    mcs.AddCommand(projectsMenuItem);
                }

                {
                    CommandID selectionsMenuCommandID = new CommandID(GuidList.guidCPPCheckPluginMultiItemProjectCmdSet, (int)PkgCmdIDList.cmdidCheckMultiItemCppcheck1);
                    MenuCommand selectionsMenuItem = new MenuCommand(onCheckSelectionsRequested, selectionsMenuCommandID);
                    mcs.AddCommand(selectionsMenuItem);
                }
            }

            bool isSucceededToAccessDocuments = false;
            for (int i = 0; i < 100; i++)
            {
                try
                {
                    var a = _dte.Documents.Count;
                    isSucceededToAccessDocuments = true;
                    break;
                }
                catch (Exception)
                {
                    //System.Threading.Thread.Sleep(0);
                }
            }
            if (!isSucceededToAccessDocuments)
            {
                throw new Exception("Failed to access ComObject dte.Documents.Count");
            }


        }

        protected override void Dispose(bool disposing)
        {
            cleanup();
            base.Dispose(disposing);
        }

        protected override int QueryClose(out bool canClose)
        {
            int result = base.QueryClose(out canClose);
            if (canClose)
            {
                cleanup();
            }
            return result;
        }
        #endregion

        private void cleanup()
        {
            foreach (var item in _analyzers)
            {
                item.Dispose();
            }
        }

        private void onCheckCurrentProjectRequested(object sender, EventArgs e)
        {
            JoinableTaskFactory.Run(async () =>
            {
                await JoinableTaskFactory.SwitchToMainThreadAsync();
                _ = checkFirstActiveProjectAsync();
            });
        }

        private void onCheckAllProjectsRequested(object sender, EventArgs e)
        {
            JoinableTaskFactory.Run(async () =>
            {
                await JoinableTaskFactory.SwitchToMainThreadAsync();

                Object[] activeProjects = await getActiveProjectsAsync();
                if (activeProjects != null)
                    _ = checkProjectsAsync(activeProjects);
            });
        }

        private void onCheckSelectionsRequested(object sender, EventArgs e)
        {
            JoinableTaskFactory.Run(async () =>
            {

                await _instance.JoinableTaskFactory.SwitchToMainThreadAsync();
                ClearOutputWindow();
                MainToolWindow.Instance.ContentsType = ICodeAnalyzer.AnalysisType.ProjectAnalysis;
                try
                {
                    List<ConfiguredFiles> configuredFilesList = await getActiveSelectionsAsync();

                    if (configuredFilesList.Count > 0)
                    {
                        runAnalysis(configuredFilesList, false);
                    }
                }
                catch (Exception exception)
                {
                    addTextToOutputWindow("Operation Failed\n" + exception.Message);
                }
            });
        }

        private void onStopCheckRequested(object sender, EventArgs e)
        {
        }

        private void onSettingsWindowRequested(object sender, EventArgs e)
        {
            var settings = new CppcheckSettings();
            settings.ShowDialog();
        }

 

        public static bool isWindbgPluginLoaded()
        {
            bool created = false;
            using (new EventWaitHandle(false, EventResetMode.ManualReset, "lldb-windbg", out created)) ;
            return !created;
        }

        private void documentSavedSync(Document document)
        {
            string text;
            string filePath;
            try
            {
                if (!isWindbgPluginLoaded())
                {
                    return;
                }
                filePath = document.FullName;

                if (!System.IO.File.Exists(filePath))
                {
                    return;
                }
                text = System.IO.File.ReadAllText(filePath);

            }
            catch (Exception)
            {
                // should print here probably.
                return;
            }


            var thread = new System.Threading.Thread(() =>
            {
                try
                {
                    Channel channel = new Channel("127.0.0.1:30051", ChannelCredentials.Insecure);
                    var client = new Greeter.GreeterClient(channel);
                    bool shouldSend = client.ShouldSendPathData(new ShouldSendPathDataRequest { Path = filePath }).Should;
                    if (!shouldSend)
                    {
                        return;
                    }
                    client.SendPathData(new SendPathDataRequest { Data = text, Path = filePath });
                }
                catch (Exception)
                {

                }
            });
            thread.Start();
        }

        public static void askCheckSavedFiles()
        {
            DialogResult reply = MessageBox.Show("Do you want to start analysis any time a file is saved? It will clear previous analysis results.\nYou can change this behavior in cppcheck settings.", "Cppcheck: start analysis when file is saved?", MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2);
            Settings.Default.CheckSavedFiles = (reply == DialogResult.Yes);
            Settings.Default.Save();
        }

        private async Task<object[]> getActiveProjectsAsync()
        {
            await JoinableTaskFactory.SwitchToMainThreadAsync();

            Object[] activeProjects = (Object[])_dte.ActiveSolutionProjects;
            if (!activeProjects.Any())
            {
                System.Windows.MessageBox.Show("No project selected in Solution Explorer - nothing to check.");
                return null;
            }
            return activeProjects;
        }

        private static void addEntry(ConfiguredFiles configuredFiles, SourceFile sourceFile, Project project)
        {
            if (sourceFile != null)
            {
                List<SourceFile> sourceFileList = new List<SourceFile>();
                sourceFileList.Add(sourceFile);
                addEntry(configuredFiles, sourceFileList, project);
            }
        }

        private static void addEntry(ConfiguredFiles configuredFiles, List<SourceFile> sourceFileList, Project project)
        {
            foreach (SourceFile newSourceFile in sourceFileList)
            {
                if (newSourceFile == null)
                    continue;

                for (int index = 0; index < configuredFiles.Files.Count; index++)
                {
                    if (newSourceFile.FileName.CompareTo(configuredFiles.Files[index].FileName) == 0 &&
                        newSourceFile.FilePath.CompareTo(configuredFiles.Files[index].FilePath) == 0)
                    {
                        // file already exists in list
                        return;
                    }
                }


                configuredFiles.Files.Add(newSourceFile);
                //string projectName = project.Name;
                //_outputPane.OutputString("Will check: " + projectName + " | " + newSourceFile.FilePath + "/" + newSourceFile.FileName);
            }
        }

        private static void scanFilter(dynamic filter, List<SourceFile> sourceFileList, ConfiguredFiles configuredFiles,
            Configuration configuration, Project project)
        {
            
        }

        private static Dictionary<string, string> CreatePropertyDict(string solutionFullName)
        {
            Dictionary<string, string> dictionary = new Dictionary<string, string>();
            if (!string.IsNullOrEmpty(solutionFullName))
            {
                dictionary["SolutionDir"] = Path.GetDirectoryName(solutionFullName) + "\\";
                dictionary["SolutionExt"] = Path.GetExtension(solutionFullName);
                dictionary["SolutionFileName"] = Path.GetFileName(solutionFullName);
                dictionary["SolutionName"] = Path.GetFileNameWithoutExtension(solutionFullName);
                dictionary["SolutionPath"] = solutionFullName;
            }
            return dictionary;
        }

        private async Task<List<ConfiguredFiles>> getActiveSelectionsAsync()
        {
            await _instance.JoinableTaskFactory.SwitchToMainThreadAsync();

            Dictionary<Project, ConfiguredFiles> confMap = new Dictionary<Project, ConfiguredFiles>();

            foreach (SelectedItem selItem in _dte.SelectedItems)
            {
                Project project = null;
                if (project == null && selItem.ProjectItem != null)
                {
                    project = selItem.ProjectItem.ContainingProject;
                }

                if (project == null)
                {
                    project = selItem.Project;
                }

                if (project == null || !isVisualCppProject(project.Kind))
                {
                    continue;
                }

                Configuration configuration = await getConfigurationAsync(project);

                if (!confMap.ContainsKey(project))
                {
                    // create new Map key entry for project
                    ConfiguredFiles configuredFiles = new ConfiguredFiles();
                    confMap.Add(project, configuredFiles);
                    configuredFiles.Files = new List<SourceFile>();
                    configuredFiles.Configuration = configuration;
                }

                ConfiguredFiles currentConfiguredFiles = confMap[project];

                if (currentConfiguredFiles == null)
                {
                    continue;
                }

                if (selItem.ProjectItem == null)
                {
                    // project selected
                    List<SourceFile> projectSourceFileList = await getProjectFilesAsync(project, configuration);
                    foreach (SourceFile projectSourceFile in projectSourceFileList)
                        addEntry(currentConfiguredFiles, projectSourceFileList, project);
                }
                else
                {
                    dynamic projectItem = selItem.ProjectItem.Object;

                    if (isFilter(projectItem))
                    {
                        List<SourceFile> sourceFileList = new List<SourceFile>();
                        scanFilter(projectItem, sourceFileList, currentConfiguredFiles, configuration, project);
                        addEntry(currentConfiguredFiles, sourceFileList, project);
                    }
                    else if (isCppFile(projectItem))
                    {
                        dynamic file = selItem.ProjectItem.Object;

                        // non project selected
                        if (file != null)
                        {
                            // document selected
                            SourceFile sourceFile = await createSourceFileAsync(file.FullPath, configuration, project);
                            addEntry(currentConfiguredFiles, sourceFile, project);
                        }
                    }
                }
            }

            List<ConfiguredFiles> configuredFilesList = new List<ConfiguredFiles>();
            foreach (ConfiguredFiles configuredFiles in confMap.Values)
            {
                if (configuredFiles.Files.Any())
                {
                    configuredFilesList.Add(configuredFiles);
                }
            }

            return configuredFilesList;
        }

        private async Task checkFirstActiveProjectAsync()
        {
            await JoinableTaskFactory.SwitchToMainThreadAsync();

            Object[] activeProjects = await getActiveProjectsAsync();
            if (activeProjects != null)
                _ = checkProjectsAsync(new Object[1] { activeProjects[0] });
        }

        private async Task<List<SourceFile>> getProjectFilesAsync(Project p, Configuration currentConfig)
        {
            await JoinableTaskFactory.SwitchToMainThreadAsync();

            if (!isVisualCppProject(p.Kind))
            {
                System.Windows.MessageBox.Show("Only C++ projects can be checked.");
                return null;
            }

            List<SourceFile> files = new List<SourceFile>();
            dynamic project = p.Object;
            dynamic projectFiles = project.Files;
            foreach (dynamic file in projectFiles)
            {
                if (isCppFile(file))
                {
                    String fileName = file.Name;
                    SourceFile f = await createSourceFileAsync(file.FullPath, currentConfig, project);
                    if (f != null)
                        files.Add(f);
                }
            }
            return files;
        }

        private async Task<Configuration> getConfigurationAsync(Project project)
        {
            await JoinableTaskFactory.SwitchToMainThreadAsync();

            try
            {
                return project.ConfigurationManager.ActiveConfiguration;
            }
            catch (Exception)
            {
                return null;
            }
        }

        private async Task checkProjectsAsync(Object[] activeProjects)
        {
            Debug.Assert(activeProjects.Any());

            List<ConfiguredFiles> allConfiguredFiles = new List<ConfiguredFiles>();
            foreach (dynamic o in activeProjects)
            {
                Configuration configuration = await getConfigurationAsync(o);
                if (configuration == null)
                {

                    return;
                }

                dynamic projectFiles = await getProjectFilesAsync(o, configuration);
                if (projectFiles == null)
                    continue;

                ConfiguredFiles configuredFiles = new ConfiguredFiles();
                configuredFiles.Files = projectFiles;
                configuredFiles.Configuration = configuration;
                allConfiguredFiles.Add(configuredFiles);
            }

            await JoinableTaskFactory.SwitchToMainThreadAsync();

            MainToolWindow.Instance.ContentsType = ICodeAnalyzer.AnalysisType.ProjectAnalysis;

            runAnalysis(allConfiguredFiles, false);
        }

        private static bool isCppFile(dynamic file)
        {
            try
            {
                // Checking file.FileType == eFileType.eFileTypeCppCode...
                // Automatic property binding fails with VS2013 because there the FileType property
                // is *explicitly implemented* and so only accessible via the declaring interface.
                // Using Reflection to get to the interface and access the property directly instead.
                Type fileObjectType = file.GetType();
                var vcFileInterface = fileObjectType.GetInterface("Microsoft.VisualStudio.VCProjectEngine.VCFile");
                if (vcFileInterface == null)
                {
                    // We failed to get the interface so we can't lookup the real file type, and are left
                    // with the option of hard-coding the value of eFileTypeCppCode, hoping that it won't
                    // be changed in future versions.
                    const int eFileTypeCppCode = 0;
                    if (file.FileType == eFileTypeCppCode)
                    {
                        return true;
                    }
                }
                else
                {
                    var fileTypeValue = vcFileInterface.GetProperty("FileType").GetValue((object)file);
                    Type fileTypeEnumType = fileTypeValue.GetType();
                    Debug.Assert(fileTypeEnumType.FullName == "Microsoft.VisualStudio.VCProjectEngine.eFileType");
                    var fileTypeEnumValue = Enum.GetName(fileTypeEnumType, fileTypeValue);
                    var fileTypeCppCodeConstant = "eFileTypeCppCode";
                    // First check the enum contains the value we're looking for
                    Debug.Assert(Enum.GetNames(fileTypeEnumType).Contains(fileTypeCppCodeConstant));
                    if (fileTypeEnumValue == fileTypeCppCodeConstant)
                        return true;
                }
                return false;
            }
            catch (Exception e)
            {
                Debug.WriteLine("Exception in isCppFile for " + ((Object)file).ToString() + "\n" + e.Message);
                return false;
            }
        }

        private static bool isFilter(dynamic checkObject)
        {
            return implementsInterface(checkObject, "Microsoft.VisualStudio.VCProjectEngine.VCFilter");
        }

        private void runSavedFileAnalysis(SourceFile file, Configuration currentConfig, bool isChanged)
        {
            Debug.Assert(currentConfig != null);

            var configuredFiles = new ConfiguredFiles();
            configuredFiles.Files = new List<SourceFile> { file };
            configuredFiles.Configuration = currentConfig;

            runAnalysis(new List<ConfiguredFiles> { configuredFiles }, isChanged);
        }

        private void runAnalysis(List<ConfiguredFiles> configuredFiles, bool analysisOnSavedFile)
        {
            foreach (var analyzer in _analyzers)
            {
                analyzer.analyze(configuredFiles);
            }
        }

        private static string getAttributeFromProject(
            string attributeName, string filePath,Configuration config, Project project)
        {
            Dictionary<string, string> dictionary = new Dictionary<string, string>();
            dictionary.Add("Configuration", config.ConfigurationName);
            dictionary.Add("Platform", config.PlatformName);
            dictionary.Add("BuildingSolutionFile", "true");
            dictionary.Add("BuildingInsideVisualStudio", "true");
            using (Microsoft.Build.Evaluation.ProjectCollection projectCollection = new Microsoft.Build.Evaluation.ProjectCollection((IDictionary<string, string>)CreatePropertyDict(_dte.Solution.FullName)))
            {
                Microsoft.Build.Evaluation.Project project2 = new Microsoft.Build.Evaluation.Project(Microsoft.Build.Construction.ProjectRootElement.Open(project.FullName, projectCollection), (IDictionary<string, string>)dictionary, (string)null, projectCollection);
                foreach (var allEvaluatedItem in project2.AllEvaluatedItems)
                {
                    if (allEvaluatedItem.ItemType == "ClCompile" && allEvaluatedItem.EvaluatedInclude.ToLower() == Path.GetFileName(filePath).ToLower())
                    {
                        var attribute = allEvaluatedItem.GetMetadataValue(attributeName);

                        return attribute;
                    }
                }
            }
            throw new Exception(String.Format("tried to find attribute {0} but failed",attributeName));
        }

        private static async Task<SourceFile> createSourceFileAsync(string filePath, Configuration targetConfig, Project realProject)
        {
            dynamic project = realProject.Object;
            try
            {
                await Instance.JoinableTaskFactory.SwitchToMainThreadAsync();

                String configurationName = targetConfig.ConfigurationName;
                dynamic config = project.Configurations.Item(configurationName);
                String toolSetName = "Win32";
                if (config == null)
                {
                    String targetConfigName = string.Format("{0}|{1}", configurationName, targetConfig.PlatformName);
                    foreach (dynamic cfg in project.Configurations)
                    {
                        String configName = cfg.Name.ToString() as String;
                        if (configName == targetConfigName)
                        {
                            config = cfg;
                            toolSetName = targetConfig.PlatformName;
                            break;
                        }
                    }
                }
                else
                {
                    toolSetName = config.PlatformToolsetShortName;
                }

                if (String.IsNullOrEmpty(toolSetName))
                    toolSetName = config.PlatformToolsetFriendlyName;
                String projectDirectory = project.ProjectDirectory;
                String projectName = project.Name;
                SourceFile sourceForAnalysis = new SourceFile(filePath, projectDirectory, projectName, toolSetName);
                dynamic toolsCollection = config.Tools;
                foreach (var tool in toolsCollection)
                {
                    // Project-specific includes
                    if (implementsInterface(tool, "Microsoft.VisualStudio.VCProjectEngine.VCCLCompilerTool"))
                    {
                        sourceForAnalysis.addMacro("_DEBUG");
                        sourceForAnalysis.addMacro("_MT");
                        if (1 == (int)tool.RuntimeLibrary)
                        {
                        }
                        else if (3 == (int)tool.RuntimeLibrary)
                        {
                            sourceForAnalysis.addMacro("_DLL");
                        }
                        else
                        {
                            throw new Exception("Not supported run time library - are you sure you are in debug mode?");
                        }
                        String includes = tool.FullIncludePath;
                        String definitions = getAttributeFromProject("PreprocessorDefinitions",filePath, targetConfig, realProject);
                        string languageStandard = getAttributeFromProject("LanguageStandard", filePath, targetConfig, realProject);
                        string languageFlag = "/std:c++14";
                        if(languageStandard== "stdcpplatest")
                        {
                            languageFlag = "/std:c++latest";
                        }
                        else if(languageStandard == "stdcpp17")
                        {
                            languageFlag = "/std:c++17";
                        }

                        String macrosToUndefine = tool.UndefinePreprocessorDefinitions;
                        String[] includePaths = includes.Split(';');
                        for (int i = 0; i < includePaths.Length; ++i)
                            includePaths[i] = Environment.ExpandEnvironmentVariables(config.Evaluate(includePaths[i])); ;
                        sourceForAnalysis.LanguageStandard = languageFlag;
                        sourceForAnalysis.addIncludePaths(includePaths);
                        sourceForAnalysis.addMacros(definitions.Split(';'));
                        sourceForAnalysis.addMacrosToUndefine(macrosToUndefine.Split(';'));
                        break;
                    }
                }

                return sourceForAnalysis;
            }
            catch (Exception ex)
            {
                addTextToOutputWindow(ex.Message);
                return null;
            }
        }

        private static bool isVisualCppProject(string kind)
        {
            return kind.Equals("{8BC9CEB8-8B4A-11D0-8D11-00A0C91BC942}");
        }

        private static bool implementsInterface(object objectToCheck, String interfaceName)
        {
            Type objectType = objectToCheck.GetType();
            var requestedInterface = objectType.GetInterface(interfaceName);
            return requestedInterface != null;
        }

        private async void checkProgressUpdated(object sender, ICodeAnalyzer.ProgressEvenArgs e)
        {
            int progress = e.Progress;
            if (progress == 0)
                progress = 1; // statusBar.Progress won't display a progress bar with 0%

            await JoinableTaskFactory.SwitchToMainThreadAsync();

            EnvDTE.StatusBar statusBar = _dte.StatusBar;
            if (statusBar != null)
            {
                String label = "";
                if (progress < 100)
                {
                    if (e.FilesChecked == 0 || e.TotalFilesNumber == 0)
                        label = "cppcheck analysis in progress...";
                    else
                        label = "cppcheck analysis in progress (" + e.FilesChecked + " out of " + e.TotalFilesNumber + " files checked)";

                    statusBar.Progress(true, label, progress, 100);
                }
                else
                {
                    label = "cppcheck analysis completed";

                    statusBar.Progress(true, label, progress, 100);

                    _ = System.Threading.Tasks.Task.Run(async delegate
                    {
                        await System.Threading.Tasks.Task.Delay(5000);
                        await JoinableTaskFactory.SwitchToMainThreadAsync();
                        try
                        {
                            statusBar.Progress(false, label, 100, 100);
                        }
                        catch (Exception) { }
                    });
                }
            }
        }

        private static void CreateDefaultGlobalSuppressions()
        {
        }
        private RunningDocTableEvents _runningDocTableEvents = null;
        public static DTE _dte = null;
        private DocumentEvents _eventsHandlers = null;
        private CommandEvents _commandEventsHandlers = null;
        private List<ICodeAnalyzer> _analyzers = new List<ICodeAnalyzer>();

        private OutputWindowPane _outputPane = null;

        private const int commandEventIdSave = 331;
        private const int commandEventIdSaveAll = 224;
        public static String axivionJsonPath;
        public static String autosarJsonPath;
        public static String AXIVION_GUIDE_HTML = Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().Location) + "\\resources\\axivion_stylecheck_guide.pdf";

        public static String AUTOSAR_GUIDE_HTML = Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().Location) + "\\resources\\AUTOSAR_RS_CPP14Guidelines.pdf";
        private static CPPCheckPluginPackage _instance = null;
    }


}


