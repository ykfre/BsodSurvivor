using System;
using System.Collections.Generic;
using System.Linq;
using EnvDTE;
using System.Diagnostics;
using System.IO;
using System.Windows.Forms;
using System.Text.RegularExpressions;

namespace VSPackage.CPPCheckPlugin
{
    public class AnalyzerCppcheck : ICodeAnalyzer
    {
        private const string tempFilePrefix = "CPPCheckPlugin";

        public AnalyzerCppcheck()
        {
            // Perform some cleanup of old temporary files
            string tempPath = Path.GetTempPath();

            try
            {
                // Get all files that have our unique prefix
                string[] oldFiles = Directory.GetFiles(tempPath, tempFilePrefix + "*");

                foreach (string file in oldFiles)
                {
                    DateTime fileModifiedDate = File.GetLastWriteTime(file);

                    if (fileModifiedDate.AddMinutes(120) < DateTime.Now)
                    {
                        // File hasn't been written to in the last 120 minutes, so it must be 
                        // from an earlier instance which didn't exit gracefully.
                        File.Delete(file);
                    }
                }
            }
            catch (System.Exception) { }
        }

        ~AnalyzerCppcheck()
        {
            cleanupTempFiles();
        }

        public override void analyze(List<ConfiguredFiles> allConfiguredFiles)
        {
            if (!allConfiguredFiles.Any())
                return;

            run(allConfiguredFiles[0].Files[0]);
        }

        

        private void cleanupTempFiles()
        {
            // Delete the temp files. Doesn't throw an exception if the file was never
            // created, so we don't need to worry about that.
            foreach (string name in _tempFileNamesInUse)
                File.Delete(name);

            _tempFileNamesInUse.Clear();
        }

        private string createNewTempFileName()
        {
            string name = Path.GetTempPath() + tempFilePrefix + "_" + Path.GetRandomFileName();
            _tempFileNamesInUse.Add(name);
            return name;
        }

        private List<string> _tempFileNamesInUse = new List<string>();
    }
}
