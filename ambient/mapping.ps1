# git
New-Item -Path "C:$env:HOMEPATH\.gitconfig" -ItemType SymbolicLink -Target "C:$env:HOMEPATH\.dotfiles\.gitconfig" -Force

# powershell
New-Item -Path "C:$env:HOMEPATH\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -ItemType SymbolicLink -Target "C:$env:HOMEPATH\.dotfiles\.profile.ps1" -Force

# windows terminal
New-Item -Path "C:$env:HOMEPATH\AppData\Local\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\LocalState\settings.json" -ItemType SymbolicLink -Target "C:$env:HOMEPATH\.dotfiles\.wterm.json" -Force

# neovim
New-Item -Path "C:$env:HOMEPATH\AppData\Local\nvim\init.vim" -ItemType SymbolicLink -Target "C:$env:HOMEPATH\.dotfiles\.vim" -Force

# oh-my-posh
New-Item -Path "C:$env:HOMEPATH\Programs\oh-my-posh\themes\my_schema1.json" -ItemType SymbolicLink -Target "C:$env:HOMEPATH\.dotfiles\.posh.json" -Force

