# oh-my-posh init pwsh | Invoke-Expression
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/jandedobbeleer.omp.json" | Invoke-Expression

Invoke-Expression (&starship init powershell)

function Edit-Profile {
    Invoke-Expression "code $PROFILE"
}

function Edit-Hotkeys {
    Invoke-Expression "code C:\Users\tcloma\Documents\AutoHotkey\Keybinds.ahk"
}
function Start-Hotkeys {
    Invoke-Item "C:\Users\tcloma\Documents\AutoHotkey\Keybinds.ahk"
}

# Aliases
Set-Alias -Name touch -Value New-Item
Set-Alias -Name code -Value codium
Set-Alias -Name py -Value python
Set-Alias -Name pwshrc -Value Edit-Profile
Set-Alias -Name ahk -Value Start-Hotkeys
Set-Alias -Name ahke -Value Edit-Hotkeys