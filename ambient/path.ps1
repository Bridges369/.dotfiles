Set-Content -Path $Profile.CurrentUserAllHosts -Value "`$env:PATH += `";$env:HOME/.dotfiles/bin`""

$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine")
