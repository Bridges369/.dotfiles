# function lf     { # get force
#   param([System.String]$path)
#   Get-ChildItem $path -Force}
function ld     { # get only directories
  param([System.String]$path)
  Get-ChildItem $path -Directory}
function lfl    { # get only files
  param([System.String]$path)
  Get-ChildItem $path -File}
function mksl   { # create and set directory
  param([System.String]$path)
  mkdir $path; Set-Location $path}
function Search { # search in browser
  param([System.String]$source="")
  Start-Process Opera "https://www.google.com.br/search?q=$($source -replace ' ', '+')"}
