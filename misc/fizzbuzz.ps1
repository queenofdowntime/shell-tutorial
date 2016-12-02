param (
  [int]$number
)

function FizzBuzz-Says {
  if ( $number % 15 -eq 0 ) {
    "fizzbuzz"
  } elseif ( $number % 5 -eq 0 ) {
    "buzz"
  } elseif ( $number % 3 -eq 0 ) {
    "fizz"
  } else {
    "$number :("
  }
}

FizzBuzz-Says

# for ( $i = 1; $i -le 100; $i++ ) { .\script.ps1 $i }
