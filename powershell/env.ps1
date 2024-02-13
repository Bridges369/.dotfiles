$Env:USERNAME = "Bridges369"
$TEMP = $Env:TEMP
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
