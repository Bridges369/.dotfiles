$Env:USERNAME = "Bridges369"
$TEMP = "C:\Windows\Temp\"
[System.String]$themes = "$env:UserProfile\AppData\Local\Programs\oh-my-posh\themes"
[System.String]$nvim_profile = "$env:UserProfile\AppData\Local\nvim\init.vim"
[System.String]$terminal_profile = "$env:UserProfile\AppData\Local\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\LocalState\settings.json"
[Hashtable]$mine = @{
  bedrock=@{
    exe="C:\Program Files\WindowsApps\Microsoft.MinecraftUWP_1.18.2023.0_x64__8wekyb3d8bbwe\Minecraft.Windows.exe";
    worlds="$env:APPDATA\..\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\minecraftWorlds";
    resources="$env:APPDATA\..\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\development_resource_packs\";
    behaviors="$env:APPDATA\..\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\development_behavior_packs\";
    home="$env:APPDATA\..\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\"
  };
  java=@{
    home="C:\Users\Bridges369\AppData\Roaming\.minecraft\";
    saves=@{
      machine="C:\Users\Bridges369\AppData\Roaming\.minecraft\saves\Machine"
    };
    custom=@{
      minecraft_custom="C:\Users\Bridges369\Games\.minecraft-custom\"
    }
  }
}
[System.String]$HostHistory = "$env:APPDATA\Microsoft\Windows\PowerShell\PSReadLine\$($host.Name)_history.txt"
