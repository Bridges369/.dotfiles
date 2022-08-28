# { Imports }
Import-Module Terminal-Icons
Import-Module posh-git
# { PSReadLine }
$PSReadLineOptionsGeneral = @{
  PredictionSource = "History"
  EditMode = "vi"
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
# { Chocolatey }
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
