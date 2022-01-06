param (
  [Parameter(Mandatory)]
  [string]$FileName
)

Write-Verbose -Message "Finding file matching $FileName" -Verbose

Get-ChildItem -Recurse -Filter "*$FileName*" -ErrorAction SilentlyContinue | ForEach-Object {
  $directory = $_.directory
  Write-Output "$directory\$_"
}
