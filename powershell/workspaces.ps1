function Get-Workspace {
  param(
    [System.String]$path
  )
  $list = (Get-Content "~/.dotfiles/powershell/workspaces/list.json" | ConvertFrom-Json).workspaces
  $list = $list | Sort-Object "name"

  for ($i=0; $i -lt $list.Length; $i++) {
    $list[$i] = ""
  }
}
Set-Alias gw Get-Workspace
