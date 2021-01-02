import os
import shutil
import argparse

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Copy file to windbg x')
    parser.add_argument(dest="windbg_folder_path", help="Windbg folder path")
    args = parser.parse_args()
    dir_path = os.path.dirname(__file__)
    external_dlls_path = os.path.join(dir_path, "external dlls")
    windbg_folder_path = args.windbg_folder_path
    for file_name in os.listdir(external_dlls_path):
        file_path = os.path.join(external_dlls_path, file_name)
        shutil.copy2(file_path, os.path.join(windbg_folder_path, file_name))
        shutil.copy2(file_path, os.path.join(windbg_folder_path, "amd64", "winext", file_name))

    for file_name in ["BsodSurvivor.dll", "config.json", "CreateFileHookDll.dll"]:
        shutil.copy2(os.path.join(dir_path, file_name), os.path.join(windbg_folder_path, "amd64", "winext", file_name))
