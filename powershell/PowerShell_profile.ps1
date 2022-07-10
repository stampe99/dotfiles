Import-Module PSReadLine

# Start starship
Invoke-Expression (&starship init powershell)

# Alias
Set-Alias pwsh powershell
Set-Alias np notepad
Set-Alias g git

# Utilities
function welcomeMessage(){
    $Message = "Welcome, $env:UserName ($env:ComputerName)`n"
    Write-Host $Message
}

Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineOption -PredictionSource History

function setTitle(){
    # $env:ComputerName optionally for computer name in title
    $Title = "$env:UserName ~ pwsh"
    $host.UI.rawUI.WindowTitle = $Title
}

function which ($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue |
        Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

# Run functions
setTitle
welcomeMessage