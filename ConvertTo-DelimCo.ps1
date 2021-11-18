param (
  [array]$array,
  [Switch]$SingleQuote
)

if ($SingleQuote) {
  $convertedArray = "'$($array -join "','")'"
}
else {
  $convertedArray = '"{0}"' -f ($array -join '","')

}

$convertedArray
