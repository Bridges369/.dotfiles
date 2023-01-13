Param (
  [Parameter(
    Position = 0,
    Mandatory = $true,
    ValueFromPipeline = $true,
    ParameterSetName = "File path",
    HelpMessage = "Enter the file path."
    # ValidatePattern = "^([0-A]|)"
  )]
  [ValidateScript({ $_ -ne "" })]
  [Alias( "p" )]
  [System.String[]]
  $Path,

  [Parameter(
    Position = 1,
    Mandatory = $false,
    ValueFromPipeline = $false,
    ParameterSetName = "Force creation of new file",
    HelpMessage = "If the path already exists, it will be created anyway."
  )]
  [Switch]
  $Force = $false
)

Process {
  if( $Force ) {
    New-Item $Path -ItemType file -Force
  } else {
    New-Item $Path -ItemType file
  }
}
