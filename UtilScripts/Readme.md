# Project Utility Scripts

These scripts helps to clean up unreal project generated files, update git ignore files and so on. Its recommended to run the bat files normally, running it as admin privilege may prevent it working properly.

## Cleanup all files
`Cleanup_All.bat` will remove files and folders listed below, skipping few specific files

* Binaries
* Binaries inside Plugin folder
* DerivedDataCache
* Intermediate
* Saved
    * Autosaves
    * Config
    * Logs
* .sln (Project Specific)

## Cleanup Only Binaries
`Cleanup_All.bat` will remove only the binary folder for the project and all the plugins, along with project sln file.

## Download or Update Git Config files
`UpdateGitConfig.bat` will pull and replace the [`.gitignore`](https://gist.githubusercontent.com/aurkoroy/6200d096c63f831def7b92cdf54a43c8) and [`.gitattributes`](https://gist.githubusercontent.com/aurkoroy/d18bd2bf1ffd78059b4608109cab8cd5) files.
After downloading the files, it will reset git cache and add all files again so that it matches the new ignore and lfs tracking.

> [!WARNING]
> Make sure git is properly installed and initialized at the root folder.
