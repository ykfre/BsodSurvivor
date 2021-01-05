What is Bsod Survivor

This project aims to facilitate debugging kernel drivers.

# Install Visual Studio extension:

 click on "visual studio\BsodSurvivorExtension.vsix"

after that please [add a shortuct](https://www.vitoshacademy.com/visual-studio-how-to-create-a-custom-shortcut/) to "Link With Loaded Driver" in Visual Studio by

 adding a shortuct to Tool.LinkWithLoadedDriver

# Install Windbg Preview plugin

**There is currently only support for Windbg Preview, not the old one.**

- [ ] Make sure that ml64.exe directory is in your PATH environment variable.**

  For example make sure  - **C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.27.29110\bin\Hostx64\x64 is** in your PATH environment variable.

- [ ] You will need to copy the windbg folder to a path where you have write access in order for the next steps to work.

- [ ] **Run** python.exe windbg/copy_windbg_files.py ${windbg_folder_path} 

  where windbg_folder_path is the root path of Windbg X folder in your computer, for example:

  C:\Microsoft.WinDbg_1.2007.6001.0_neutral__8wekyb3d8bbwe

- [ ] In Virtual KD, please configure it to use Custom Command: "{windbg_path}\DbgX.Shell.exe" -k com:pipe,resets=0,reconnect,port=\\.\pipe\kd_{vm_name} -c ".load BsodSurvivor;.reload;ed nt!Kd_Default_Mask 8;bm nt!KeBugCheck*"

  for example: "C:\Users\idowe\Desktop\Microsoft.WinDbg_1.2007.6001.0_neutral__8wekyb3d8bbwe\DbgX.Shell.exe" -k com:pipe,resets=0,reconnect,port=\\.\pipe\kd_Windows_7_x64_(5) -c ".load BsodSurvivor;.reload;ed nt!Kd_Default_Mask 8;bm nt!KeBugCheck*".

- [ ] In your first plugin run - please let the plugin access windows defender firewall.


# Open Source Acknowledgements

blink - https://github.com/crosire/blink for pdb parser and some ideas.

tenzen-llvm-project https://github.com/tentzen/llvm-project, for the implementation of sehs in llvm x64.