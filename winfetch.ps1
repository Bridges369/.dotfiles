# { CUSTOM SEGMENTS }
# Add a custom info line
function info_custom_time {
    return @{
        title = "Time"
        content = (Get-Date)
    }
}
# dashes
function info_custom_dashes {
    $length = $env:UserName.Length + $env:COMPUTERNAME.Length + 1
    return @{
        title   = ""
        content = "`u{254D}" * $length
    }
}
# Use the following option to specify custom package managers.
# Create a function with that name as suffix, and which returns
# the number of packages. Two examples are shown here:
# $CustomPkgs = @("cargo", "just-install")
# function info_pkg_cargo {
#     return (cargo install --list | Where-Object {$_ -like "*:" }).Length
# }
# function info_pkg_just-install {
#     return (just-install list).Length
# }

# { SETS }
# # Set the version of Windows to derive the logo from.
$logo = "Microsoft"
$image = "~\.dotfiles\winfetch-logo.png"
$imgwidth = 32 # 32
$noimage = $false
# Configure how to show info for levels
# $cpustyle = 'bar'
$memorystyle = 'bartext'
$diskstyle = 'bartext'
$batterystyle = 'bartext'
# Configure which package managers are shown
# disabling unused ones will improve speed
# $ShowPkgs = @("winget", "scoop", "choco")
# Configure which disks are shown
# $ShowDisks = @("C:", "D:")
# Show all available disks
# $ShowDisks = @("*")


# { ENABLE }
# Make the logo blink
$blink = $true
# Display all built-in info segments.
# $all = $true
# Display image using ASCII characters
# $ascii = $true

# { ORDER SEGMENTS }
@(
    "title"
    "custom_dashes"
    "custom_time"
    "os"
    # "computer"
    # "kernel"
    # "motherboard"
    # "custom_time"  # use custom info line
    # "uptime"
    # "ps_pkgs"  # takes some time
    # "pkgs"
    "pwsh"
    # "resolution"
    "terminal"
    # "theme"
    # "cpu"
    # "gpu"
    # "cpu_usage"  # takes some time
    # "memory"
    # "disk"
    "battery"
    # "locale"
    # "weather"
    # "local_ip"
    # "public_ip"
    # "blank"
    # "colorbar"
)
