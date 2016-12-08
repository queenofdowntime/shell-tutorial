# Basic Commands

If you were able to set up git correctly, copy and paste the following into your terminal:
```
cd ~
git clone https://github.com/fouralarmfire/shell-tutorial
cd shell-tutorial
```

If not run:
```
cd ~
mkdir shell-tutorial
cd shell-tutorial
```

Then run `pwd`. You should see `/Users/<your_name>/shell-tutorial`.

Now we're going to find out what exactly you just made happen.

The following commands are the ones you will end up using every day to do basic stuff.
As we talk through them, type each one into your terminal, play around and see what they do.

Do not worry about breaking stuff. It would be very, very hard for anything to go wrong with these commands.
Some of them are designed to throw errors, but don't panic. Either ask for help, hit google, or just type something that makes
sense to you; the shell we are using (bash) is for the most part quite intuitive and, again, it is
very hard to break anything using these commands.

Take notes if you want, type them (and I mean type; no copy-pasting) until you are comfortable with what they do.
```
ls

ls -a

ls -l

ls -lR

hostname

mkdir <dirname>

mkdir -p <dirname>/<a>/<b>/<c>

cd

cd -

cd <dirname>

cd ..

pushd <dirname>

popd

rmdir <dirname>

rm -rf <dirname>

touch <new_file>

cp <new_file> <copied_new_file>

cp <current/location/of/new_file> <different/location/of/new_file>

rm <new_file>

cat > <new_file>

cat <new_file>

cat >> <new_file>

echo foo > <new_file>

echo foo >> <new_file>

grep <search_term> <filename>

less <filename>

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

find . -name "*.md" | xargs less

man

clear

history

ps

sudo
chmod
chown
```

[source](https://learnpythonthehardway.org/book/appendix-a-cli/ex1.html)

[bash cheat sheet](https://learncodethehardway.org/unix/bash_cheat_sheet.pdf)

## Next
Write your [first program](https://github.com/fouralarmfire/shell-tutorial/blob/master/osx_and_linux/exercises/hello_world.md).

