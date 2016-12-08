# Leap Year

## Task:

Write a program which will tell you whether or not a given year is a leap year.
#### Rules:

A leap year occurs:
- On every year that is evenly divisible by 4...
  - except every year that is evenly divisible by 100...
    - unless the year is also evenly divisible by 400.

Or:

To determine whether a year is a leap year, follow these steps:

1. If the year is evenly divisible by 4, go to step 2. Else, go to step 5.
2. If the year is evenly divisible by 100, go to step 3. Else, go to step 4.
3. If the year is evenly divisible by 400, go to step 4. Else, go to step 5.
4. The year is a leap year (it has 366 days).
5. The year is not a leap year (it has 365 days).
```
C:\> .\leap 1997
nope, 1997 is not a leap year

C:\> .\leap 1996
yes! 1996 is a leap year!

C:\> .\leap 1990
nope, 1990 is not a leap year

C:\> .\leap 2000
yes! 2000 is a leap year!
```

To complete this task you will need to learn about [modular arithmetic](https://betterexplained.com/articles/fun-with-modular-arithmetic/),
[comparison operators](http://ss64.com/ps/syntax-compare.html), [if/else statements](https://blog.udemy.com/powershell-if-else/) and logical operators.

### Logical Operators
1. `-or` requires at least one of the given comparators to be True. It will only evaluate the right hand side
if the left side returns a non-zero exit code:

  - `True -or True` returns True

 - `True -or False` returns True

 - `False -or True` returns True

 - `False -or False` returns False

2. `-and` requires both given comparators to be True. It will only evaluate the right hand side if the left side
returns an exit code of zero:

  - `True -and True` returns True

  - `True -and False` returns False

  - `False -and True` returns False

  - `False -and False` returns False

3. `!`/`-not` negates the subsequent statment or expression.

  - `!True` returns False

  - `!False` returns True

4. `-xor` Logical exclusive: requires one statement to be True and the other False.

  - `True -xor False` returns True

  - `True -xor True` returns False

  - `False -xor False` returns False

#### Pop Quiz:

What will the following return?

NB: you won't actually be able to run these on the command line,
they are just a logical exercise.
```
!True -and True

(-not False) -and !False

False -or !True

(True -or !True) -and (True -and !False)

(False -and False) -xor (True -or False)

False -and echo hey!

True -and echo hey!

True -or echo hey!

False -or echo hey!
```

### Challenge Yourself!
- Set a default for when no year is passed to your script.
- Write a for-loop to run your leap-year calculator against every year in the last century.
  - make sure you print out which years are and aren't.
