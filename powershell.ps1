$src_ = "$HOME/.dotfiles/powershell"
# {{ Envrioments }}
. $src_/env.ps1
# {{ Modules }}
. $src_/modules-config.ps1
# {{ Aliases }}
. $src_/aliases.ps1
# {{ Functions }}
. $src_/functions.ps1
# {{ Play cmd }}
oh-my-posh --init --shell pwsh --config "$env:USERPROFILE\.dotfiles\posh.json" | Invoke-Expression
Clear-Host
# winfetch
