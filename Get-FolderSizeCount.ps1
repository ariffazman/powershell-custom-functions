param ( $Object )

$Object | ForEach-Object {
  $directoryName = $_
  Get-ChildItem -Path $directoryName -Recurse -File | Measure-Object -Property Length -Sum | `
    Select-Object @{N = 'DirectoryName'; E = { $directoryName } }, @{N = 'Size(MB)'; E = { ('{0:N2}' -f ($_.Sum / 1mb)) } }, Count }
