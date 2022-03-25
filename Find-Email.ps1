param (
  [Parameter(Mandatory)]
  [string]$FileName
)

$File = Get-Content $FileName

$emailRegex = "[a-z0-9!#\$%&'*+/=?^_{|}~-]+(?:\.[a-z0-9!#\$%&'*+/=?^_{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"
$email = (Select-String -InputObject $File -Pattern $emailRegex -AllMatches).Matches

$email.Value
