# Init profile

Run this as administrator:

```powershell
Set-ExecutionPolicy `
    Bypass `
    -Scope CurrentUser `
    -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol `
    -bor 3072
```

You must be install [Git](https://git-scm.com/) before anything:
```
winget install --id Git.Git -e --source winget
```

Run this:
```powershell
New-Item -Path $env:CURRENTUSER -Name ".dotfiles" -ItemType Directory
Set-Location ~\.dotfiles
git init
git clone https://github.com/Bridges369/dotfiles.git
```

# Map dotfiles to ~\.dotfiles

Run the script `mapping.ps1`
