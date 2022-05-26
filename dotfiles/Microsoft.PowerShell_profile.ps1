# Var  _______________________________________________
[System.String]$themes = "$env:UserProfile\AppData\Local\Programs\oh-my-posh\themes"
[System.String]$nvim_profile = "$env:UserProfile\AppData\Local\nvim\init.vim"
[System.String]$terminal_profile = "$env:UserProfile\AppData\Local\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\LocalState\settings.json"
[Hashtable]$mine = @{
  b=@{
    e="C:\Program Files\WindowsApps\Microsoft.MinecraftUWP_1.18.2023.0_x64__8wekyb3d8bbwe\Minecraft.Windows.exe";
    w="$env:APPDATA\..\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\minecraftWorlds";
    r="$env:APPDATA\..\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\development_resource_packs\";
    b="$env:APPDATA\..\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\development_behavior_packs\";
    h="$env:APPDATA\..\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\"
  };
  j=@{}
}
[System.String]$HostHistory = "$env:APPDATA\Microsoft\Windows\PowerShell\PSReadLine\$($host.Name)_history.txt"


# Prompt _____________________________________________
Import-Module Terminal-Icons
Import-Module posh-git


# PSReadLine _________________________________________
$PSReadLineOptionsGeneral = @{
  PredictionSource = "History"
  EditMode = "Emacs"
  HistoryNoDuplicates = $true
  HistorySearchCursorMovesToEnd = $true
  PredictionViewStyle = "ListView"
}
$PSReadLineOptionsBell = @{
  BellStyle = "Audible"
  DingTone = 1221
  DingDuration = 30
}
Set-PSReadLineOption @PSReadLineOptionsGeneral
Set-PSReadLineOption @PSReadLineOptionsBell
Set-PSReadLineKeyHandler -Chord "Ctrl+d" -Function DeleteChar

# Functions __________________________________________
function lf     { # get force
  param([System.String]$path)
  Get-ChildItem $path -Force}
function ld     { # get only directories
  param([System.String]$path)
  Get-ChildItem $path -Directory}
function lfl    { # get only files
  param([System.String]$path)
  Get-ChildItem $path -File}
function mksl   { # create and set directory
  param([System.String]$path)
  mkdir $path; Set-Location $path}
function File   { # create file
  param([System.String]$path)
  New-Item $path -ItemType File -Force} # create file
function Search { # search in browser
  param([System.String]$source="")
  Start-Process Opera "https://www.google.com.br/search?q=$($source -replace ' ', '+')"}
function which { # find command path
  param([System.String]$cmd)
  Get-Command -Name $cmd -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue}


# Alias ______________________________________________
# Set-Alias irlua metalua
# Set-Alias stdlua zbstudio
# Set-Alias stdslua wxlua
Set-Alias ivh Invoke-History
Set-Alias r Ruby
Set-Alias v nvim
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias clt Clear-RecycleBin -Force
Set-Alias w Write-Host


# Final ______________________________________________
oh-my-posh --init --shell pwsh --config $themes\my_schema1.json | Invoke-Expression


# Chocolatey profile _________________________________
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}


Clear-Host
