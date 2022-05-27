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
