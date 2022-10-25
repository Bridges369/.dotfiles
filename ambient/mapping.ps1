# git
New-Item -Path "C:$env:HOMEPATH\.gitconfig" -ItemType SymbolicLink -Target "C:$env:HOMEPATH\.dotfiles\.gitconfig" -Force

# powershell
New-Item -Path "C:$env:HOMEPATH\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -ItemType SymbolicLink -Target "C:$env:HOMEPATH\.dotfiles\.profile.ps1" -Force

# windows terminal
New-Item -Path "C:$env:HOMEPATH\AppData\Local\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\LocalState\settings.json" -ItemType SymbolicLink -Target "C:$env:HOMEPATH\.dotfiles\.wterm.json" -Force

# neovim
New-Item -Path "C:$env:HOMEPATH\AppData\Local\nvim\init.lua" -ItemType SymbolicLink -Target "C:$env:HOMEPATH\.dotfiles\.lua" -Force

# oh-my-posh
New-Item -Path "C:$env:HOMEPATH\Programs\oh-my-posh\themes\my_schema1.json" -ItemType SymbolicLink -Target "C:$env:HOMEPATH\.dotfiles\.posh.json" -Force

# Winfetch
New-Item -Path "~\.config\winfetch\config.ps1" -ItemType SymbolicLink -Target "~\.dotfiles\.winf.ps1" -Force

# midnight-commander
New-Item -Path "~\.config\mc\ini" -ItemType SymbolicLink -Target "~\.dotfiles\mcini" -Force
