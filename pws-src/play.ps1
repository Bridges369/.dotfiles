function Create-LangProject {
  param([System.String]$lang,[System.String]$path=".")
  switch ( $lang ){
    "lua" {}
    "ruby" {}
    "crust" {}
    "zola" {}
    default {
      $hash = ((new-guid).ToString() -split '-')[1]
      New-Item -Name "Project-$hash" -ItemType Directory
    }
  }
}
function Play {
  param(
    [System.String]$type,
    [System.String]$arg="s",
    [System.String]$arg2=""
  )
  switch ($type){
    "test" {
      $global:playQuit = (Get-Location).ToString()
      New-Item -Name "$HOME/Test/$arg"
    }
    "quit" {
      if ($arg -eq "s") {
        Set-Location $global:playQuit;
      } elseif ($arg -eq "c") {
        w ""
      }
    }
    "profile" {
      if ($arg -eq "s") {
        $global:playProfile = (Get-Location).ToString()
      } elseif ($arg -eq "c") {
        Set-Location $global:playProfile
      }
    }
    default { Write-Output "error" }
  }
}
# function project
<#
function play-new { # start a test directory
  param([System.String]$name)
  $global:playQuit = (Get-Location).ToString()
  mksl "$HOME/Tests/$name"}
function play-quit { # returns to directory before play-new
  cd $global:playQuit;  Remove-Variable -name "global:playQuit" -Force}
#>
