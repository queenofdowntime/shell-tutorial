# Basic Commands

If you were able to set up git correctly, run:
```
git clone https://github.com/fouralarmfire/shell-tutorial
cd shell-tutorial
```

If not run:
```
mkdir shell-tutorial
cd shell-tutorial
```

Then run `pwd`. You should see `C:\>/shell-tutorial`.

Now we're going to find out what exactly you just made happen.

The following commands are the ones you will end up using every day to do basic stuff.
As we talk through them, type each one into your terminal, play around and see what they do.

Do not worry about breaking stuff. It would be very, very hard for anything to go wrong with these commands.
Some of them are designed to throw errors, but don't panic. Either ask for help, hit google, or just type something that makes
sense to you; again, it is very hard to break anything using these commands.

Take notes if you want, type them (and I mean type; no copy-pasting) until you are comfortable with what they do.
```
New-Edit <new_file>

Get-Process

Write-Host (echo)

runas

exit

set

echo

helpctr

help

select-string

dir -r

forfiles

type

more

mv

robocopy

cp

popd

pushd

rmdir

ls

hostname

pwd
```







```
ls

ls -a

ls -l

hostname

mkdir <dirname>

cd

cd <dirname>

rmdir <dirname>

pushd <dirname>

popd

cp <from> <to>

mv <from> <to>

cat > <new_file>

type <new_file>

cat >> <new_file>

rm <new_file>

echo foo > file

echo foo >> file

grep <search_term> <filename>

more <filename>

env

export NAME=<your_name>

echo $NAME

find . -name "*.md"

find . -name "*.md" | wc

sort --help

find . -name "*.md" | <correct sort command>

xargs

echo hello | xargs

xargs < <filename>

find . -name "*.md" | xargs cat

find . -name "*.md" | xargs more

man
```

[source](https://learnpythonthehardway.org/book/appendix-a-cli/ex1.html)

## Next:
Write your [first program](https://github.com/fouralarmfire/shell-tutorial/blob/master/windows/exercises/hello_world.md).

