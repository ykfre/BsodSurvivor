# What is Bsod Survivor

This project aims to facilitate debugging kernel drivers.

# Install Visual Studio extension:

 click on "visual studio\BsodSurvivorExtension.vsix"

# Install Windbg X plugin

The is currently only support for Windbg X, not the old one.

**Run** python windbg/copy_windbg_files.py ${windbg_folder_path} 

where windbg_folder_path is the root path of Windbg X folder in your computer, for example:

C:\Microsoft.WinDbg_1.2007.6001.0_neutral__8wekyb3d8bbwe

**Please note** - that you will need to copy the windbg folder to a path where you have write access in order for the python script to succeed.

**You should also make sure that ml64.exe directory is in your PATH environment variable.**

For example  - **C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.27.29110\bin\Hostx64\x64 is** in your PATH environment variable.

