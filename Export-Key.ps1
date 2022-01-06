param (
  [Parameter()]
  [ValidateSet(32, 24, 16)]$Byte = 32
)

Write-Verbose -Message "Randomly generating $Byte-byte array" -Verbose
$Key = New-Object Byte[] $Byte
[Security.Cryptography.RNGCryptoServiceProvider]::Create().GetBytes($Key)
$Key
