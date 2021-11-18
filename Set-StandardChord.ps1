Write-Verbose -Message "Setting PSReadLine with standard chords"

# Standard Chord
Set-PSReadLineKeyHandler -Chord Ctrl+LeftArrow -ScriptBlock { [Microsoft.PowerShell.PSConsoleReadLine]::BackwardWord() }
Set-PSReadLineKeyHandler -Chord Ctrl+RightArrow -ScriptBlock { [Microsoft.PowerShell.PSConsoleReadLine]::ForwardWord() }
Set-PSReadLineKeyHandler -Chord Ctrl+Shift+RightArrow -ScriptBlock { [Microsoft.PowerShell.PSConsoleReadLine]::SelectForwardWord() }
Set-PSReadLineKeyHandler -Chord Ctrl+Shift+LeftArrow -ScriptBlock { [Microsoft.PowerShell.PSConsoleReadLine]::SelectBackwardWord() }
