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

function setTitle(){
    # $env:ComputerName optionally for computer name in title
    $Title = "$env:UserName ~ pwsh"
    $host.UI.rawUI.WindowTitle = $Title
}

# Run functions
setTitle
welcomeMessage