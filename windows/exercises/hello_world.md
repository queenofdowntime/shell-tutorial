# Hello World!

## Task:
Write a simple program which, if passed a name, will greet that user and if passed nothing
will greet the world.
```
C:\> ./hello Emma
Hello Emma!

C:\> ./hello
Hello World!
```

## Part 1: say "Hello World!"

Steps:

1. Create a file called `hello.ps1`
2. Open the file in a text editor (like Notepad).
3. At this point our program is very simple; when executed we want it to print `Hello World!` to
the terminal.
Looking back at our list of [basic commands](), we have a choice between `echo` and `Write-Host`:

  `echo "Hello World!"`
  or
  `Write-Host "Hello World!"`

4. Save the file and go to your terminal.
5. Programs are executed by prefixing `./` or `.\` to the filename or by running `&` + the full path to
the script: `& C:\Users\<you>\shell-tutorial\hello.ps1`.
  Did you receive an angry error? Good. This is because Windows by default forbids the execution of
  any non-approved scripts. To execute ours we need to change the Execution Policy.

  There are 4:
  - Restricted (nothing will run)
  - RemoteSigned (locally created scripts are okay)
  - AllSigned (scripts signed by a trusted publisher are okay)
  - Unrestricted (absolutely anything)

6. Close Powershell.
7. Search for the app again in `Start`, but this time, right click and select `Run as administrator`.
8. Run `Set-ExecutionPolicy RemoteSigned` and respond `Y` when prompted.
9. Navigate back to your `hello.ps1` and try executing it again. This time it should say hello!


## Part 2: say "Hello World!" (again, but in a cool coder way)

Steps:

1. Open your `hello` script again. This time we are going to wrap our simple `echo`/`Write-Host` statement in
a function. Functions are ways to abstract code into useful and re-usable chunks. They should contain a group of
related commands that perform a single, specific task.
2. On an empty line above your `echo`/`Write-Host`, choose a name for your function. `Say-HelloWorld` seems like a
good choice. Function names should be as clear and descriptive as possible, while simultaneously
concise. Powershell function declarations are indicated by simply writing `function <name> {}`. Function names tend
to be capitalised, with dashes(`-`) in the place of natural spaces.
3. The original "Hello World" statement should sit between the set of curly braces:

  ```
  function Say-HelloWorld {
    echo "Hello World!" # or Write-Host "Hello World!"
  }
  ```

4. Save your file, and run your script. Did nothing happen? Good.
This is because we are not actually calling that function we declared.
5. Open your file again, and this time at the bottom write `Say-HelloWorld`.
6. Save and run. All cool?
7. Why did we call the function at the bottom of the file? Put the call at the top and see what happens.
Powershell is procedural and will read the file line by line top-down; if you call a function before
it has had a chance to read it, it will obviously be unable to run it. Functions in scripts are also
scoped, which means they only exist while the script runs. Once it is done, its functions do not exist
until the script is invoked again.



## Part 3: say "Hello \<name\>!"

Steps:

1. To say hello to specific people, not the whole world, we want to be able to pass in
parameters (params for short) to our script, something like: `./hello.ps1 Emma`.
Params are most easily managed in shell scripts by capturing them as variables that we can use later.
Variables (vars) in Powershell are declared like this: `$cats = "better than dogs"`.
Vars are then called by using `$`: for example, `echo $cats` will return `better than dogs`.
You can try that out on the Powershell command line.
2. Open `hello.ps1`.
3. First, we need to declare which params we will allow to be passed to our script.
Params must be the very first bit of executable code in scripts, so putting them at the top makes sense.
The parameter definition area follows this format:

  ```
  param (
    [type1]$param-name1,
    [type2]$param-name2
  )
  ```

  For our purposes, we are not going to worry about types right now,  we only care that words in general
  ("cat", "dog", etc) fall under the string type. So our definition looks like:

    ```
    param (
      [string]$name
    )
    ```

4. We should then change our function to be called something more generic, like `Say-Hello`
and instead of "Hello World!" we can `echo "Hello $name!"`
Your code should now look something like:
  ```
  param (
    [string]$name
  )

  function Say-Hello {
    echo "Hello $name!" # or Write-Host "Hello $name!"
  }

  Say-Hello
  ```
5. Save and run, this time passing in a name: `./hello.ps1 Emma`
(or, better yet: `./hello.ps1 -name Emma`)


## Part 4: say "Hello \<name\>!" or "Hello World!"
Now if you run your script without any args it will still work, but it will have a random space: "Hello !".
So we should set a default which will be called whenever our script determines that there are no args present.

`if/else` statements are used in all programming lanuages to set a logical sequence of events.

`if` a condition exists `then` do one thing, `else` do another thing.

Steps:

1. Open your script again.
2. We need to check if the `name` variable has been set. There are several ways to do this and you can
google for the variations. We are going to do the simplest thing right now. If a param has not been set,
is will return `False` when queried.

  So in our code, somewhere under our function, we can enter:

  ```
  if ($name) {
    Say-Hello
  } else {
    echo "Hello World!"
  }
  ```

3. Save and run.
4. But why are we using `echo` again when we already have a function which does that?
Edit your function so that it will take its own params.
Our `Say-Hello` function will now have its own parameter definition area `echo "Hello $name!"` and when we
call it in our `if` statement we pass `$name`, if it exists, or `"World"` if it does not:
  ```
  param (
    [string]$name
  )

  function Say-Hello {
    param (
      [string]$name
    )
    echo "Hello $name!" # or Write-Host "Hello $name!"
  }

  if ($name) {
    Say-Hello $name
  } else {
    Say-Hello "World"
  }
  ```

Obviously this is an unecessarily complicated implementaion, but it will set you up with some of
the tools you need for the next exercise.

[source1](http://www.adminarsenal.com/admin-arsenal-blog/powershell-how-to-write-your-first-powershell-script/)

[source2](https://technet.microsoft.com/en-us/library/hh551144.aspx)

### Challenge Yourself!
Optional tasks you can investigate, research and solve on your own.
- Try implementing the same code in at least 2 different ways.
- Return a different message when names have more than 6 characters.
- Passing in a lower case name? Figure out how to upcase it.
- Passing in an uncaplitalised name? Figure out how to capitalise it.

## Next:
[Fizzbuzz](https://github.com/fouralarmfire/shell-tutorial/blob/master/windows/exercises/fizzbuzz.md)!

