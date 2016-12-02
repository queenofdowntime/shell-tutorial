#/bin/bash

year="$@"

comparators() {
  if [ $[$year % 400] -eq "0" ]; then
    echo "yes! $year is a leap year."
  elif [ $[$year % 4] -eq 0 ]; then
          if [ $[$year % 100] -ne 0 ]; then
            echo "yes! $year is a leap year!"
          else
            echo "nope, $year is not a leap year."
          fi
  else
    echo "nope, $year is not a leap year."
  fi
}

bool_operators() {
  if (( ("$year" % 400) == "0" )) || (( ("$year" % 4 == 0) && ("$year" % 100 != "0") )); then
    echo "yes! $year is a leap year!"
  else
    echo "nope, $year is not a leap year."
  fi
}

comparators
bool_operators
