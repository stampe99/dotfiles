Import-Module PsReadLine

# Start starship
Invoke-Expression (&starship init powershell)

# Alias
Set-Alias pwsh powershell
Set-Alias np notepad
Set-Alias g git

# Utilities

Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineOption -PredictionSource History

function welcomeMessage(){
    $Message = "Welcome, $env:UserName ($env:ComputerName)`n"
    Write-Host $Message
}

function setTitle(){
    # $env:ComputerName optionally for computer name in title
    $Title = "$env:UserName ~ pwsh"
    $host.UI.rawUI.WindowTitle = $Title
}

# Run functions
setTitle
welcomeMessage