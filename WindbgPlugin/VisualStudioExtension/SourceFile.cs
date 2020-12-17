using System.Collections.Generic;
using System;
using System.Diagnostics;
using System.IO;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace VSPackage.CPPCheckPlugin
{
	public class SourceFile
	{
		public SourceFile(string fullPath, string projectBasePath, string projectName)
		{
			_fullPath = fullPath;
			_projectBasePath = projectBasePath;
			ProjectName = projectName;
		}

		// All include paths being added are resolved against projectBasePath
		public void AddIncludePath(string path)
		{
			if (String.IsNullOrEmpty(_projectBasePath))
				return;
			else if (String.IsNullOrEmpty(path) || path.Equals(".") || path.Equals("\\\".\\\""))
				return;

            bool isAbsolutePath;
            try
			{
				isAbsolutePath = System.IO.Path.IsPathRooted(path);
			}
			catch (System.ArgumentException)
			{
				// seems like an invalid path, ignore
				return;
			}

			if (isAbsolutePath) // absolute path
				IncludePaths.Add(path);
			else
			{
				// Relative path - converting to absolute
				String pathForCombine = path.Replace("\"", String.Empty).TrimStart('\\', '/');
				IncludePaths.Add(Path.GetFullPath(Path.Combine(_projectBasePath, pathForCombine))); // Workaround for Path.Combine bugs
			}
		}

		public void AddIncludePaths(IEnumerable<string> paths)
		{
			foreach (string path in paths)
			{
				AddIncludePath(path);
			}
		}

		public void AddMacro(string macro)
		{
			if(macro == "")
            {
				return;
            }
			Macros.Add(macro);
		}

		public void AddMacros(IEnumerable<string> macros)
		{
			foreach (string macro in macros)
			{
				AddMacro(macro);
			}
		}

		public void AddMacroToUndefine(string macro)
		{
			MacrosToUndefine.Add(macro);
		}

		public void AddMacrosToUndefine(IEnumerable<string> macros)
		{
			foreach (string macro in macros)
			{
				AddMacroToUndefine(macro);
			}
		}

		public string FilePath
		{
			set
			{
				// Only makes sense to set this once, a second set call is probably a mistake
				Debug.Assert(_fullPath == null);
				_fullPath = value;
			}
			get { return _fullPath; }
		}

		public string FileName
		{
			get
			{
				return Path.GetFileName(FilePath);
			}
		}

		public string RelativeFilePath
		{
			get { return _fullPath.Replace(_projectBasePath, ""); }
		}

        public string ProjectName { get; } = null;

        public string BaseProjectPath
		{
			set
			{
				// Only makes sense to set this once, a second set call is probably a mistake
				Debug.Assert(_projectBasePath == null);
				_projectBasePath = value;
			}
			get { return _projectBasePath; }
		}

        public HashSet<string> IncludePaths { get; } = new HashSet<string>();

        public List<string> Macros { get; } = new List<string>();

        public List<string> MacrosToUndefine { get; } = new List<string>();

		public string LanguageStandard { get; set; }


        private string _fullPath = null;
        private string _projectBasePath = null;
    }

    public class ConfiguredFiles {
		public List<SourceFile> Files;
		public EnvDTE.Configuration Configuration;

	}
}
