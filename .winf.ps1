# ===== WINFETCH CONFIGURATION =====

$image = "~/cat.png"
# $noimage = $true

# Display image using ASCII characters
# $ascii = $true
# Set the version of Windows to derive the logo from.
$logo = "Microsoft"
# Specify width for image/logo
$imgwidth = 16
# Make the logo blink
$blink = $true

# Display all built-in info segments.
# $all = $true


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

# Configure which disks are shown
# $ShowDisks = @("C:", "D:")
# Show all available disks
# $ShowDisks = @("*")

# Configure which package managers are shown
# disabling unused ones will improve speed
# $ShowPkgs = @("winget", "scoop", "choco")

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


# { INFO STYLE }
# Configure how to show info for levels
# Default is for text only.
# 'bar' is for bar only.
# 'textbar' is for text + bar.
# 'bartext' is for bar + text.
# $cpustyle = 'bar'
$memorystyle = 'bar'
$diskstyle = 'bar'
$batterystyle = 'bartext'


# Remove the '#' from any of the lines in
# the following to **enable** their output.

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
    "ps_pkgs"  # takes some time
    "pkgs"
    "pwsh"
    # "resolution"
    "terminal"
    # "theme"
    # "cpu"
    # "gpu"
    # "cpu_usage"  # takes some time
    "memory"
    "disk"
    "battery"
    # "locale"
    "weather"
    # "local_ip"
    # "public_ip"
    # "blank"
    # "colorbar"
)
