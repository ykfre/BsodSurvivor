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
using VSIXProject1;
namespace VSPackage.BsodSurvivorPlugin
{

    [PackageRegistration(UseManagedResourcesOnly = true, AllowsBackgroundLoading = true)]
    [DefaultRegistryRoot(@"Software\Microsoft\VisualStudio\11.0")]
    [ProvideAutoLoad(VSConstants.UICONTEXT.SolutionExists_string, PackageAutoLoadFlags.BackgroundLoad)]
    // This attribute is used to register the information needed to show this package
    // in the Help/About dialog of Visual Studio.
    [InstalledProductRegistration("#110", "#112", "1.2.0", IconResourceID = 400)]
    // This attribute is needed to let the shell know that this package exposes some menus.
    [ProvideMenuResource("Menus.ctmenu", 1)]
    [Guid(GuidList.guidBsodSurvivorPluginPkgString)]
    public sealed class BsodSurvivorPluginPackage : AsyncPackage
    {

        public async void AddTextToOutputWindow(string text, bool shouldClear = false)
        {
            try
            {
                Assumes.NotNull(_outputPane);
                await JoinableTaskFactory.SwitchToMainThreadAsync();
                if (shouldClear)
                {
                    _outputPane.Activate();
                    _outputPane.Clear();
                }
                _outputPane.OutputString(text + "\n");
            }
            catch (Exception e)
            {
                Debug.WriteLine("Exception in addTextToOutputWindow(): " + e.Message);
            }
        }

        public async void ClearOutputWindow()
        {
            try
            {
                await JoinableTaskFactory.SwitchToMainThreadAsync();

                Assumes.NotNull(_outputPane);
                _outputPane.Clear();
            }
            catch (Exception e)
            {
                Debug.WriteLine("Exception in ClearOutputWindow(): " + e.Message);
            }
        }

        public string SolutionPath()
        {
            return JoinableTaskFactory.Run(async () =>
            {
                await JoinableTaskFactory.SwitchToMainThreadAsync();
                try { return Path.GetDirectoryName(_dte.Solution.FullName); }
                catch (Exception) { return ""; }
            });
        }

        protected override async Task InitializeAsync(CancellationToken cancellationToken, IProgress<ServiceProgressData> progress)
        {
            // Switches to the UI thread in order to consume some services used in command initialization
            await JoinableTaskFactory.SwitchToMainThreadAsync(cancellationToken);

            Debug.WriteLine(string.Format(CultureInfo.CurrentCulture, "Entering Initialize() of: {0}", this.ToString()));
            _runningDocTableEvents = new RunningDocTableEvents(this);
            _runningDocTableEvents.BeforeSave += DocumentSavedSync;
            _dte = await GetServiceAsync(typeof(DTE)) as DTE;
            Assumes.Present(_dte);
            if (_dte == null)
                return;

            _eventsHandlers = _dte.Events.DocumentEvents;

            _commandEventsHandlers = _dte.Events.CommandEvents;

            var outputWindow = (OutputWindow)_dte.Windows.Item(EnvDTE.Constants.vsWindowKindOutput).Object;
            _outputPane = outputWindow.OutputWindowPanes.Add("Bsod Survivor Output");

            // Add our command handlers for menu (commands must exist in the .vsct file)
            if (await GetServiceAsync(typeof(IMenuCommandService)) is OleMenuCommandService mcs)
            {

                {
                    CommandID selectionsMenuCommandID = new CommandID(GuidList.guidBsodSurvivorPluginCmdSet, (int)PkgCmdIDList.cmdidLink);
                    MenuCommand selectionsMenuItem = new MenuCommand(onLinkRequested, selectionsMenuCommandID);
                    mcs.AddCommand(selectionsMenuItem);
                }

                {
                    CommandID selectionsMenuCommandID = new CommandID(GuidList.guidBsodSurvivorPluginMultiItemProjectCmdSet, (int)PkgCmdIDList.cmdidLink1);
                    MenuCommand selectionsMenuItem = new MenuCommand(onLinkRequested, selectionsMenuCommandID);
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

        private void onLinkRequested(object sender, EventArgs e)
        {
            JoinableTaskFactory.Run(async () =>
            {

                await JoinableTaskFactory.SwitchToMainThreadAsync();
                ClearOutputWindow();
                try
                {
                    List<ConfiguredFiles> configuredFilesList = await GetActiveSelectionsAsync();

                    if (configuredFilesList.Count > 0 && configuredFilesList[0].Files.Count == 1)
                    {
                        Link(configuredFilesList[0].Files[0]);
                    }
                    else if(configuredFilesList.Count > 0 && configuredFilesList[0].Files.Count >0)
                    {
                        AddTextToOutputWindow("Not linking, selected files count is greater than one");
                    }
                    else
                    {
                        AddTextToOutputWindow("Not linking, selected files count isn't 1");
                    }
                }
                catch (Exception exception)
                {
                    AddTextToOutputWindow("Operation Failed\n" + exception.Message);
                }
            });
        }


        public static bool IsWindbgPluginLoaded()
        {
            using (new EventWaitHandle(false, EventResetMode.ManualReset, "lldb-windbg", out bool created))
                return !created;
        }

        private void DocumentSavedSync(Document document)
        {
            string text;
            string filePath;
            try
            {
                if (!IsWindbgPluginLoaded())
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

        private async Task<object[]> GetActiveProjectsAsync()
        {
            await JoinableTaskFactory.SwitchToMainThreadAsync();

            Object[] activeProjects = (Object[])_dte.ActiveSolutionProjects;
            if (!activeProjects.Any())
            {
                System.Windows.MessageBox.Show("No project selected in Solution Explorer - nothing to link.");
                return null;
            }
            return activeProjects;
        }

        private static void AddEntry(ConfiguredFiles configuredFiles, SourceFile sourceFile)
        {
            if (sourceFile != null)
            {
                List<SourceFile> sourceFileList = new List<SourceFile>
                {
                    sourceFile
                };
                AddEntry(configuredFiles, sourceFileList);
            }
        }

        private static void AddEntry(ConfiguredFiles configuredFiles, List<SourceFile> sourceFileList)
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
            }
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

        private async Task<List<ConfiguredFiles>> GetActiveSelectionsAsync()
        {

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

                if (project == null || !IsVisualCppProject(project.Kind))
                {
                    continue;
                }

                Configuration configuration = await GetConfigurationAsync(project);

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
                    List<SourceFile> projectSourceFileList = await GetProjectFilesAsync(project, configuration);
                    foreach (SourceFile _ in projectSourceFileList)
                        AddEntry(currentConfiguredFiles, projectSourceFileList);
                }
                else
                {
                    dynamic projectItem = selItem.ProjectItem.Object;

                    if (IsCppFile(projectItem))
                    {
                        dynamic file = selItem.ProjectItem.Object;

                        // non project selected
                        if (file != null)
                        {
                            // document selected
                            SourceFile sourceFile = await CreateSourceFileAsync(file.FullPath, configuration, project);
                            AddEntry(currentConfiguredFiles, sourceFile);
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

        private async Task<List<SourceFile>> GetProjectFilesAsync(Project p, Configuration currentConfig)
        {
            await JoinableTaskFactory.SwitchToMainThreadAsync();

            if (!IsVisualCppProject(p.Kind))
            {
                System.Windows.MessageBox.Show("Only C++ projects can be checked.");
                return null;
            }

            List<SourceFile> files = new List<SourceFile>();
            dynamic project = p.Object;
            dynamic projectFiles = project.Files;
            foreach (dynamic file in projectFiles)
            {
                if (IsCppFile(file))
                {
                    SourceFile f = await CreateSourceFileAsync(file.FullPath, currentConfig, project);
                    if (f != null)
                        files.Add(f);
                }
            }
            return files;
        }

        private async Task<Configuration> GetConfigurationAsync(Project project)
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


        private static bool IsCppFile(dynamic file)
        {
            try
            {
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

        private string GetAttributeFromProject(
            string attributeName, string filePath, Configuration config, Project project)
        {
            Dictionary<string, string> dictionary = new Dictionary<string, string>
            {
                { "Configuration", config.ConfigurationName },
                { "Platform", config.PlatformName },
                { "BuildingSolutionFile", "true" },
                { "BuildingInsideVisualStudio", "true" }
            };
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
            throw new Exception(String.Format("tried to find attribute {0} but failed", attributeName));
        }

        private async Task<SourceFile> CreateSourceFileAsync(string filePath, Configuration targetConfig, Project realProject)
        {
            dynamic project = realProject.Object;
            try
            {
                await JoinableTaskFactory.SwitchToMainThreadAsync();

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
                SourceFile sourceForAnalysis = new SourceFile(filePath, projectDirectory, projectName);
                dynamic toolsCollection = config.Tools;
                foreach (var tool in toolsCollection)
                {
                    // Project-specific includes
                    if (ImplementsInterface(tool, "Microsoft.VisualStudio.VCProjectEngine.VCCLCompilerTool"))
                    {
                        sourceForAnalysis.AddMacro("_DEBUG");
                        sourceForAnalysis.AddMacro("_MT");
                        if (1 == (int)tool.RuntimeLibrary)
                        {
                        }
                        else if (3 == (int)tool.RuntimeLibrary)
                        {
                            sourceForAnalysis.AddMacro("_DLL");
                        }
                        else
                        {
                            throw new Exception("Not supported run time library - are you sure you are in debug mode?");
                        }
                        String includes = tool.FullIncludePath;
                        String definitions = GetAttributeFromProject("PreprocessorDefinitions", filePath, targetConfig, realProject);
                        string languageStandard = GetAttributeFromProject("LanguageStandard", filePath, targetConfig, realProject);
                        string languageFlag = "/std:c++14";
                        if (languageStandard == "stdcpplatest")
                        {
                            languageFlag = "/std:c++latest";
                        }
                        else if (languageStandard == "stdcpp17")
                        {
                            languageFlag = "/std:c++17";
                        }

                        String macrosToUndefine = tool.UndefinePreprocessorDefinitions;
                        String[] includePaths = includes.Split(';');
                        for (int i = 0; i < includePaths.Length; ++i)
                            includePaths[i] = Environment.ExpandEnvironmentVariables(config.Evaluate(includePaths[i])); ;
                        sourceForAnalysis.LanguageStandard = languageFlag;
                        sourceForAnalysis.AddIncludePaths(includePaths);
                        sourceForAnalysis.AddMacros(definitions.Split(';'));
                        sourceForAnalysis.AddMacrosToUndefine(macrosToUndefine.Split(';'));
                        break;
                    }
                }

                return sourceForAnalysis;
            }
            catch (Exception ex)
            {
                AddTextToOutputWindow(ex.Message);
                return null;
            }
        }

        private void SaveOpenedFiles()
        {
            JoinableTaskFactory.Run(async () =>
            {
                await JoinableTaskFactory.SwitchToMainThreadAsync();

                var dte = _dte;
                for (int i = 1; i <= dte.Documents.Count; i++)
                {
                    var document = dte.Documents.Item(i);
                    if (!document.Saved)
                    {
                        try
                        {
                            document.Save();
                        }
                        catch (Exception)
                        {

                        }
                    }

                }
            });
        }


        void Link(SourceFile sourceFile)
        {
            SaveOpenedFiles();
            var thread = new System.Threading.Thread(() =>
            {
                try
                {

                    if (!IsWindbgPluginLoaded())
                    {
                        throw new Exception("windbg plugin is not loaded - please load it first.");
                    }
                    else
                    {
                        AddTextToOutputWindow("Sending blink request to windbg plugin.");
                    }
                    Channel channel = new Channel("127.0.0.1:30051", ChannelCredentials.Insecure);
                    var client = new Greeter.GreeterClient(channel);
                    string compilationFlags = "";
                    foreach (var include in sourceFile.IncludePaths)
                    {
                        compilationFlags += "/imsvc\"" + include + "\"" + " ";
                    }
                    foreach (var define in sourceFile.Macros)
                    {
                        compilationFlags += "/D\"" + define + "\"" + " ";
                    }
                    compilationFlags += sourceFile.LanguageStandard + " ";
                    JoinableTaskFactory.Run(async () =>
                    {
                        var reply = client.Compile(new LinkCommandRequest
                        {
                            ClangFilePath = @"C:\temp2\llvm-project\temp\RelWithDebInfo\bin\clang-cl.exe",
                            LdPath = @"C:\code\llvm-project\temp\Release\bin\lld-link.exe",
                            MasmPath = @"C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.27.29110\bin\Hostx64\x64\ml64.exe",
                            CompilationFlags = compilationFlags,
                            FilePath = sourceFile.FilePath,
                            LinkerFlags = "",
                            ObjCopyPath = @"C:\Program Files\LLVM\bin\llvm-objcopy.exe"

                        });
                        while (await reply.ResponseStream.MoveNext())
                        {
                            if (reply.ResponseStream.Current.IsLogging)
                            {
                                AddTextToOutputWindow(reply.ResponseStream.Current.Message);
                            }
                            else
                            {
                                if (!reply.ResponseStream.Current.Success)
                                {
                                    throw new Exception(String.Format("Failed to link {0} with error:\n {1}",
                                        sourceFile.FilePath, reply.ResponseStream.Current.Message));
                                }
                            }
                        }

                        AddTextToOutputWindow("Link succeeded");
                        MessageBox.Show("Linking succeeded");
                    });
                }
                catch (Exception e)
                {
                    AddTextToOutputWindow(e.Message);
                    MessageBox.Show("Linking failed, please see output window for more details.");

                }
            });
            thread.Start();
        }

        private static bool IsVisualCppProject(string kind)
        {
            return kind.Equals("{8BC9CEB8-8B4A-11D0-8D11-00A0C91BC942}");
        }

        private static bool ImplementsInterface(object objectToCheck, String interfaceName)
        {
            Type objectType = objectToCheck.GetType();
            var requestedInterface = objectType.GetInterface(interfaceName);
            return requestedInterface != null;
        }

        private RunningDocTableEvents _runningDocTableEvents = null;
        private DTE _dte = null;
        private DocumentEvents _eventsHandlers = null;
        private CommandEvents _commandEventsHandlers = null;

        private OutputWindowPane _outputPane = null;

    }
}


