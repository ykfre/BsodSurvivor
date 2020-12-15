using System.Collections.Generic;
using System;
using EnvDTE;
using System.Diagnostics;
using System.Text.RegularExpressions;
using System.IO;
using EnvDTE;
using LinkCommand;
using System.Collections;
using System.Threading.Tasks;
using Newtonsoft.Json;
using System.Collections;
using System.Windows.Forms;
using Grpc.Core.Api;
using Grpc.Core;

namespace VSPackage.CPPCheckPlugin
{
    using System.Threading;
    public class ThreadAbortException : Exception
    {
        public ThreadAbortException()
        {
        }
    }

    public class ProcessCreateException : Exception
    {
        public ProcessCreateException(int returnCode, String error, String output)
        {
            m_output = output;
            m_error = error;
        }

        private int returnCode { get; }

        String m_error;
        String m_output;
    }
    public abstract class ICodeAnalyzer : IDisposable
    {
        public enum SuppressionScope
        {
            suppressThisMessage,
            suppressThisMessageSolutionWide,
            suppressThisMessageGlobally,
            suppressThisTypeOfMessageFileWide,
            suppressThisTypeOfMessageProjectWide,
            suppressThisTypeOfMessagesSolutionWide,
            suppressThisTypeOfMessagesGlobally,
            suppressAllMessagesThisFileProjectWide,
            suppressAllMessagesThisFileSolutionWide,
            suppressAllMessagesThisFileGlobally
        };

        public enum SuppressionStorage
        {
            Project,
            Solution,
            Global
        }

        public enum AnalysisType { DocumentSavedAnalysis, ProjectAnalysis };

        public class ProgressEvenArgs : EventArgs
        {
            public ProgressEvenArgs(int progress, int filesChecked = 0, int totalFilesNumber = 0)
            {
                Debug.Assert(progress >= 0 && progress <= 100);
                Progress = progress; TotalFilesNumber = totalFilesNumber;
                FilesChecked = filesChecked;
            }
            public int Progress { get; set; }
            public int FilesChecked { get; set; }
            public int TotalFilesNumber { get; set; }
        }

        public delegate void progressUpdatedHandler(object sender, ProgressEvenArgs e);
        public event progressUpdatedHandler ProgressUpdated;

        protected void onProgressUpdated(int progress, int filesChecked = 0, int totalFiles = 0)
        {
            // Make a temporary copy of the event to avoid possibility of 
            // a race condition if the last subscriber unsubscribes 
            // immediately after the null check and before the event is raised.
            if (ProgressUpdated != null)
            {
                ProgressUpdated(this, new ProgressEvenArgs(progress, filesChecked, totalFiles));
            }
        }

        public ICodeAnalyzer()
        {

            _numCores = Environment.ProcessorCount;
        }

        ~ICodeAnalyzer()
        {
            Dispose(false);
        }

        public void Dispose()
        {
            // Dispose of unmanaged resources.
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        void Dispose(bool disposing)
        {
            if (_disposed)
                return;

            if (disposing)
            {

                // Free any other managed objects here.
                //
            }
            _disposed = true;
        }

        private bool _disposed = false;
        public abstract void analyze(List<ConfiguredFiles> configuredFiles);

        public Problem parsSeveriety(String line, String projectPath)
        {

            int severiety_start_index = line.IndexOf(": ") + ": ".Length;
            int severiety_end_index = line.IndexOf(":", severiety_start_index);
            String severiety = line.Substring(severiety_start_index, severiety_end_index - severiety_start_index);
            int line_start_index = line.Substring(0, severiety_start_index).LastIndexOf("(");
            String filePath = line.Substring(0, line_start_index);
            line_start_index += 1;
            int col_start_index = line.IndexOf(",", line_start_index);
            int line_num = Int32.Parse(line.Substring(line_start_index, col_start_index - line_start_index));
            col_start_index += 1;
            int col_num = Int32.Parse(line.Substring(col_start_index, line.IndexOf(")", col_start_index) - col_start_index));
            String message = line.Substring(severiety_end_index + 1);
            return new Problem(severiety, message, filePath, line_num, col_num, projectPath);
        }

        public Problem parseMetric(String line, String projectPath)
        {

            int message_start_index = line.IndexOf(": ") + 1;
            int message_end_index = line.IndexOf(":", message_start_index + 1);
            String message = line.Substring(message_start_index, message_end_index - message_start_index);
            String severiety = "required";
            int line_start_index = line.Substring(0, line.IndexOf(": ")).LastIndexOf("(");
            String filePath = line.Substring(0, line_start_index);
            line_start_index += 1;
            int line_end_index = line.IndexOf(")", line_start_index);
            int line_num = Int32.Parse(line.Substring(line_start_index, line_end_index - line_start_index));
            int courrent_level_start_index = message_end_index + 2;
            int courrent_level_end_index = line.IndexOf(";", courrent_level_start_index);
            var current_level_str = line.Substring(courrent_level_start_index, courrent_level_end_index - courrent_level_start_index);
            double current_level = Convert.ToDouble(current_level_str);
            int min_level_start_index = courrent_level_end_index + "; ".Length;
            int min_level_end_index = line.IndexOf(";", min_level_start_index);
            double min_level = Convert.ToDouble(line.Substring(min_level_start_index, min_level_end_index - min_level_start_index));
            int max_level_start_index = min_level_end_index + "; ".Length;
            int max_level_end_index = line.IndexOf(" ", max_level_start_index);
            double max_level = 0;
            try
            {
                max_level = Convert.ToDouble(line.Substring(max_level_start_index, max_level_end_index - max_level_start_index));
            }
            catch (Exception)
            {
                return new Problem(severiety, $"{message} current_value is {current_level} but required to be at least {min_level}", filePath, line_num, 0, projectPath);

            }

            return new Problem(severiety, $"{message} current_value is {current_level} but required to be between {min_level} and {max_level}", filePath, line_num, 0, projectPath);
        }

        int getProblemPage(Problem problem, String pagesFile)
        {
            using (StreamReader r = new StreamReader(pagesFile))
            {
                string json = r.ReadToEnd();
                var items = JsonConvert.DeserializeObject<Dictionary<string, int>>(json);
                foreach (var rule in items.Keys)
                {
                    if (problem.Message.Contains(rule))
                    {
                        return items[rule];
                    }
                }
                return 0;
            }
        }

        public List<Problem> parseOutput(String output, String projectPath, String autosarJsonPath, String axivionJsonPath)
        {
            var lines = output.Split(new[] { '\r', '\n' });
            var problems = new List<Problem>();
            foreach (var line in lines)
            {
                if (line.Length == 0)
                {
                    continue;
                }
                try
                {
                    if (!line.Contains("Metric"))
                    {
                        problems.Add(parsSeveriety(line, projectPath));
                    }
                    else
                    {
                        problems.Add(parseMetric(line, projectPath));
                    }
                }
                catch (Exception)
                {
                    try
                    {
                        problems[problems.Count - 1].Message += String.Format(" {0}", line);
                    }
                    catch (Exception)
                    {

                    }
                }
            }

            foreach (var problem in problems)
            {
                int problemPage = getProblemPage(problem, axivionJsonPath);
                problem.AxivionAddress = CPPCheckPluginPackage.AXIVION_GUIDE_HTML + $"#page={problemPage}";
                problemPage = getProblemPage(problem, autosarJsonPath);
                problem.AutosarAddress = CPPCheckPluginPackage.AUTOSAR_GUIDE_HTML + $"#page={problemPage}";
            }
            return problems;
        }

        public List<Problem> filterProblems(List<Problem> problems)
        {
            var filtered_problems = new List<Problem>();
            foreach (var problem in problems)
            {
                if (!(problem.Severity.Contains("DISABLED") || problem.Severity.Contains("advisory") ||
                    problem.Severity.Contains("low") || problem.Message.ToLower().Contains("unused field")))
                {
                    filtered_problems.Add(problem);
                }
            }
            return filtered_problems;
        }

        private void saveOpenedFiles()
        {
            CPPCheckPluginPackage.Instance.JoinableTaskFactory.Run(async () =>
            {
                await CPPCheckPluginPackage.Instance.JoinableTaskFactory.SwitchToMainThreadAsync();

                var dte = CPPCheckPluginPackage._dte;
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

        protected void run(SourceFile sourceFile)
        {
            saveOpenedFiles();
            var thread = new System.Threading.Thread(() =>
            {
                try
                {
                    
                    if (!CPPCheckPluginPackage.isWindbgPluginLoaded())
                    {
                        throw new Exception("windbg plugin is not loaded - please load it first.");
                    }
                    else
                    {
                        CPPCheckPluginPackage.addTextToOutputWindow("Sending blink request to windbg plugin.");
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
                    CPPCheckPluginPackage.Instance.JoinableTaskFactory.Run(async () =>
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
                                CPPCheckPluginPackage.addTextToOutputWindow(reply.ResponseStream.Current.Message);
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

                        CPPCheckPluginPackage.addTextToOutputWindow("Link succeeded");
                        MessageBox.Show("Linking succeeded");
                    });
                }
                catch (Exception e)
                {
                    CPPCheckPluginPackage.addTextToOutputWindow(e.Message);
                    MessageBox.Show("Linking failed, please see output window for more details.");
                }
            });
            thread.Start();
        }


        public void addProblemsToToolwindow(List<Problem> problems, String filePath, bool shouldClear)
        {
            CPPCheckPluginPackage.Instance.JoinableTaskFactory.Run(async () =>
            {
                await CPPCheckPluginPackage.Instance.JoinableTaskFactory.SwitchToMainThreadAsync();
                if (filePath == currentWindowFilePath && shouldClear)
                {
                    MainToolWindow.Instance.clear();
                    _cachedInformation[filePath].problems.Clear();
                }
                if (MainToolWindow.Instance == null || problems == null)
                    return;

                foreach (var problem in problems)
                {
                    _cachedInformation[filePath].problems.Add(problem);
                    if (filePath == currentWindowFilePath)
                    {
                        MainToolWindow.Instance.displayProblem(problem, false);
                    }
                }
            });
        }

        public String getCafeCcCommand(SourceFile file, String outputPath)
        {
            String command = "-B. ";

            command += "--type_system=Windows64 --wchar_t --no_ms_permissive --ms_c++17 -c ";
            command += String.Format("-o {0} {1}", outputPath, file.FilePath);
            return command;
        }

        private static string solutionSuppressionsFilePath()
        {
            return CPPCheckPluginPackage.solutionPath() + "\\" + CPPCheckPluginPackage.solutionName() + "_solution_suppressions.cfg";
        }

        private static string projectSuppressionsFilePath(string projectBasePath, string projectName)
        {
            Debug.Assert(!String.IsNullOrWhiteSpace(projectBasePath) && !String.IsNullOrWhiteSpace(projectName));
            Debug.Assert(Directory.Exists(projectBasePath));
            return projectBasePath + "\\" + projectName + "_project_suppressions.cfg";
        }

        private static string globalSuppressionsFilePath()
        {
            return Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) + "\\CppcheckVisualStudioAddIn\\suppressions.cfg";
        }


        protected string _projectBasePath = null; // Base path for a project currently being checked
        protected string _projectName = null; // Name of a project currently being checked

        protected int _numCores;


        public Dictionary<string, CachedInformation> _cachedInformation = new Dictionary<string, CachedInformation>();
        public string currentWindowFilePath;
        public int switchedWindow = 1;
    }
}
