# Init profile

Run this as administrator:

```powershell
Set-ExecutionPolicy `
    Bypass `
    -Scope CurrentUser `
    -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol `
```

You must be install [Git](https://git-scm.com/) before anything:
```
winget install --id Git.Git -e --source winget
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
