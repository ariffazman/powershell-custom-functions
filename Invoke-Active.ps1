Write-Verbose -Message "Invoke-Active" -Verbose

$WShell = New-Object -com 'Wscript.Shell'

while ($true) {
  $WShell.sendkeys('{SCROLLLOCK}')
  Start-Sleep -Milliseconds 10
  $WShell.sendkeys('{SCROLLLOCK}')
  Start-Sleep -Milliseconds 10
}
