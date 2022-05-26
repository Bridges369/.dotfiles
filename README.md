General Requires
===================
## Git
(For windows). [Website](https://git-scm.com/)

* Installer: [here](https://github.com/git-for-windows/git/releases/download/v2.36.1.windows.1/Git-2.36.1-64-bit.exe)
* Or using [winget tool](https://docs.microsoft.com/en-us/windows/package-manager/winget):

```powershell
winget install --id Git.Git -e --source winget
```

# Node
Programming language. [Website](https://nodejs.org/en/)

```powershell
winget install OpenJS.NodeJS.LTS
```

# Scoop
Package manager. [Website](https://scoop.sh/)

```powershell
irm get.scoop.sh | iex
```

## NVM
Node Version Manager. [Website](https://github.com/nvm-sh/nvm)

```powershell
scoop install nvm
```

## Yarn
Package manager. [Website](https://yarnpkg.com/)

```powershell
scoop install yarn
```

## Chocolatey
Package manager for Windows. [Website](https://chocolatey.org/)

```powershell
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

Windows Terminal
===================

**Config file:** settings.json

**Local:**
```powershell
$terminal_profile # view in powershell dotfile
```



PowerShell
===================

**Config File:** Microsoft.PowerShell_profile.ps1

**Local:**
```powershell
$ENV:CurrentUser\Documents\PowerShell\Microsoft.PowerShell_profile.ps1` (`$PROFILE`)
```

## PowerShell Instalation

<https://github.com/PowerShell/PowerShell/releases/download/v7.2.4/PowerShell-7.2.4-win-x64.msi>

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



Neovim
===================

**Config file:** init.vim

**Local:**
```powershell
$nvim_profile
```

## Requires

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

## Neovim Instalation

```powershell
winget install Neovim.Neovim
```

## Plugins

Install `Vim-Plug` before, for using Neovim plugins:

```powershell
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
```



Oh-My-Posh
===================

**Config file:** my_schema1.json

**Local:**
```powershell
$themes\my_schema1.json
```

## Oh-My-Posh Instalation

```powershell
winget install oh-my-posh
```
