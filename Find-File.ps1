param (
  [string]$name
)

Get-ChildItem -Recurse -Filter "*${name}*" -ErrorAction SilentlyContinue | ForEach-Object {
  $place_path = $_.directory
  Write-Output "${place_path}\${_}"
}
