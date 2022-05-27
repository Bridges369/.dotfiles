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

Run the script `mapping.ps1` after execute the previous steps.

**Mapped files:**
|    file      | map to |  dotfile    |
| :--------    | :----- |    ---:     |
| ~\\.gitconfig | ~\\.dotfiles\\.gitconfig | Git          |
| ~\\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 | ~\\.dotfiles\\.pwsh | PowerShell   |
| ~\\AppData\Local\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\LocalState\settings | ~\\.dotfiles\\.wterm | Win Terminal |
| ~\\AppData\Local\nvim\init.vim | ~\\.dotfiles\\.nvim | Neovim       |
| ~\\AppData\Local\Programs\oh-my-posh\themes\my_schema1.json | ~\\.dotfiles\\.posh | Oh-My-Posh   |

