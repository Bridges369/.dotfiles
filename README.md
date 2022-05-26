General Requires
===================
## Git
(For windows).[](https://git-scm.com/)

* Installer: [here](https://github.com/git-for-windows/git/releases/download/v2.36.1.windows.1/Git-2.36.1-64-bit.exe)
* Or using [winget tool](https://docs.microsoft.com/en-us/windows/package-manager/winget):

```powershell
winget install --id Git.Git -e --source winget
```

# Node
Programming language.[](https://nodejs.org/en/)

```powershell
winget install OpenJS.NodeJS.LTS
```

# Scoop [](https://scoop.sh/)
Package manager.[](https://scoop.sh/)

```powershell
irm get.scoop.sh | iex
```

## NVM
Node Version Manager.[](https://github.com/nvm-sh/nvm)

```powershell
scoop install nvm
```

## Yarn
Package manager.[](https://yarnpkg.com/)

```powershell
scoop install yarn
```

## Chocolatey
Package manager for Windows.[](https://chocolatey.org/)

```powershell
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

Windows Terminal
===================
Config file: settings.json

Local:
```powershell
"$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json""
```

PowerShell
===================
## Modules

### Terminal Icons
Icons for files and folders

```powershell
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
```

### Z
Directory jumper.

```powershell
Install-Module -Name z -Force
```

### PSReadLine
Autocompletion.

```powershell
Install-Module -Name PSReadLine -AllowPrerelease -Scoop CurrentUser -Force -SkipPublisherCheck
```

## Location Files

PowerShell dotfile is located in `$ENV:CurrentUser\Documents\PowerShell\Microsoft.PowerShell_profile.ps1` (`$PROFILE`)

Neovim
===================
## Requires

* Git
* Ruby

Run:
```powershell
gem install neovim
```

* Node

Run:
```powershell
npm install -g neovim
```

* Python

Run:
```powershell
python3 -m pip install --user --upgrade pynvim
```

* Perl

Run:
```powershell
cpanm -n Neovim::Ext
```

## Plugins

Install `Vim-Plug` before, for using Neovim plugins:

```powershell
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
```


## Location Files

Oh-My-Posh
===================
