param (
    [Parameter(Mandatory)]
    [array]$Array,
    [switch]$SingleQuote
)

if ($SingleQuote) {
  $convertedArray = "'$($Array -join "','")'"
}
else {
  $convertedArray = '"{0}"' -f ($Array -join '","')
}

$convertedArray
