# git => .gitconfig
New-Item -Path "$env:USERPROFILE\.gitconfig" -ItemType SymbolicLink -Target "$env:USERPROFILE\.dotfiles\.gitconfig" -Force

# powershell | .profile -> powershell.ps1
New-Item -Path "$env:USERPROFILE\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -ItemType SymbolicLink -Target "$env:USERPROFILE\.dotfiles\powershell.ps1" -Force

# windows terminal | .wterm.json -> win-term.json
New-Item -Path "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -ItemType SymbolicLink -Target "$env:USERPROFILE\.dotfiles\win-term.json" -Force

# neovim | .lua -> init.lua
New-Item -Path "$env:USERPROFILE\AppData\Local\nvim\init.lua" -ItemType SymbolicLink -Target "$env:USERPROFILE\.dotfiles\init.lua" -Force

# oh-my-posh | .posh.json -> posh.json
New-Item -Path "C:$env:HOMEPATH\Programs\oh-my-posh\themes\my_schema1.json" -ItemType SymbolicLink -Target "C:$env:HOMEPATH\.dotfiles\posh.json" -Force

# Winfetch | .winf.ps1 -> winfetch.ps1
New-Item -Path "$env:USERPROFILE\.config\winfetch\config.ps1" -ItemType SymbolicLink -Target "$env:USERPROFILE\.dotfiles\winfetch.ps1" -Force

# midnight-commander | mc.ini -> mid-cmd.ini
New-Item -Path "~\.config\mc\ini" -ItemType SymbolicLink -Target "~\.dotfiles\mid-cmd.ini" -Force

# LunarVim
New-Item -Path "~\.local\bin\lvim.ps1" -ItemType SymbolicLink -Target "~\.dotfiles\lvim.ps1" -Force


$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine")
