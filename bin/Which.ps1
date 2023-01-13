Param (
  [Parameter(
    Position = 0,
    Mandatory = $true,
    ValueFromPipeline = $true,
    ParameterSetName = "Command name",
    HelpMessage = "Enter command name/path"
    # ValidatePattern = "^([0-A]|)"
  )]
  [ValidateScript({ $_ -ne "" })]
  [Alias( "n", "p" )]
  [System.String[]]
  $Command
)

Process {
  $output = (Get-Command -Name $Command).Source

  if( $output -eq "" ) {
    ((Get-Alias $Command).ReferencedCommand.Name `
    | Get-Command).Source
  } else {
    return $output
  }
}
