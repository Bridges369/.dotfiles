New-Item ` # git
  -Path "~\.gitconfig" `
  -ItemType SymbolicLink `
  -Target "~\.dotfiles\.gitconfig" `
  -Force

New-Item ` # powershell
  -Path "$env:CURRENTUSER\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" `
  -ItemType SymbolicLink `
  -Target "~\.dotfiles\.pwsh" `
  -Force

New-Item ` # windows terminal
  -Path "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\LocalState\settings.json" `
  -ItemType SymbolicLink `
  -Target "~\.dotfiles\.wterm" `
  -Force

New-Item ` # neovim
  -Path "$env:LOCALAPPDATA\nvim\init.vim" `
  -ItemType SymbolicLink
  -Target "~\.dotfiles\.nvim" `
  -Force

New-Item ` # oh-my-posh
  -Path "$env:LOCALAPPDATA\Programs\oh-my-posh\themes\my_schema1.json" `
  -ItemType SymbolicLink `
  -Target "~\.dotfiles\.posh" `
  -Force

