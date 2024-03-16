# Init profile

Run this as administrator:

```powershell
Set-ExecutionPolicy `
    Bypass `
    -Scope CurrentUser `
    -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol `
```

# Install correct PowerShell
```
Invoke-WebRequest -uri "https://github.com/PowerShell/PowerShell/releases/download/v7.4.1/PowerShell-7.4.1-win-x64.msi" -OutFile "C:\Windows\Temp\powershell.msi"
Start-Process "C:\Windows\Temp\powershell.msi"
```

Define PowerShell-7 that default cmd

# Install winget packages
```powershell
winget install Git.Git
winget install python
winget install ffmpeg
winget install gsudo
winget install Julialang.Julia.LTS
winget install GoLang.Go
winget install MiKTeX.MiKTeX
winget install CoreyButler.NVMforWindows
winget install LuaJIT
winget install "Lua Language Server"
winget install RubyInstallerTeam.RubyWithDevKit.3.2
winget install BurntSushi.ripgrep.MSVC
winget install Anaconda.Miniconda3
winget install sharkdp.fd
```

Run this:
```powershell
Set-Location $env:CURRENTUSER
git clone https://github.com/Bridges369/.dotfiles.git
```

# Map dotfiles to ~\\.dotfiles

Run script `ambient\mapping.ps1` as administrator after execute the previous steps.

**Mapped files:**
|    file      | map to |  dotfile    |
| :--------    | :----- |    ---:     |
| ~\\.gitconfig | ~\\.dotfiles\\.gitconfig | Git          |
| ~\\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 | ~\\.dotfiles\\.profile.ps1 | PowerShell   |
| ~\\AppData\Local\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\LocalState\settings.json | ~\\.dotfiles\\.wterm.json | Win Terminal |
| ~\\AppData\Local\nvim\init.vim | ~\\.dotfiles\\.vim | Neovim       |
| ~\\AppData\Local\Programs\oh-my-posh\themes\my_schema1.json | ~\\.dotfiles\\.posh.json | Oh-My-Posh   |



# Preparating PowerShell ambient

Run as administrator the script `ambient\install-modules.ps1`.
