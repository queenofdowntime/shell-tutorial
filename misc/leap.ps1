param (
  [int]$year
)

function Comparison-Operators {
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

function Logical-Operators {
  if (( ("$year" % 400) -eq "0" )) -or (( ("$year" % 4 -eq 0) -and ("$year" % 100 -ne "0") )) {
    "yes! $year is a leap year!"
  } else {
    "nope, $year is not a leap year."
  }
}

Comparison-Operators
Logical-Operators
