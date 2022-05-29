# git
New-Item -Path "~\.gitconfig" -ItemType SymbolicLink -Target "~\.dotfiles\.gitconfig" -Force

# powershell
New-Item -Path "$env:CURRENTUSER\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -ItemType SymbolicLink -Target "~\.dotfiles\.profile.ps1" -Force

# windows terminal
New-Item -Path "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\LocalState\settings.json" -ItemType SymbolicLink -Target "~\.dotfiles\.wterm.json" -Force

# neovim
New-Item -Path "$env:LOCALAPPDATA\nvim\init.vim" -ItemType SymbolicLink -Target "~\.dotfiles\.vim" -Force

# oh-my-posh
New-Item -Path "$env:LOCALAPPDATA\Programs\oh-my-posh\themes\my_schema1.json" -ItemType SymbolicLink -Target "~\.dotfiles\.posh.json" -Force

