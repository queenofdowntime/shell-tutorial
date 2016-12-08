param (
  [int]$year
)

function Leap-Year {
  if ( $year % 400 -eq 0 ) {
    "yes! $number is a leap year!"
  } elseif ( $year % 4 -eq 0 ) {
    if ( $year % 100 -ne 0 ) {
      "yes! $year is a leap year!"
    } else {
      "nope. $year is not a leap year."
    }
  } else {
    "nope. $year is not a leap year."
  }
}

Leap-Year
