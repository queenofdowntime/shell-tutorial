# Basic Commands

If you were able to set up git correctly, copy and paste the following into your terminal:
```
cd ~
git clone https://github.com/fouralarmfire/shell-tutorial
cd shell-tutorial
mkdir code
cd code
```

If not run:
```
cd ~
mkdir -p shell-tutorial/code
cd shell-tutorial/code
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
pwd

ls

ls -a

ls -l

ls -lR

mkdir apples

mkdir -p apples/oranges/pears/bananas

cd

cd -

cd apples

cd ..

pushd apples/oranges/pears/bananas

popd

touch cake

cp cake another_cake

cp cake apples/oranges/cookie

rm cake

rm -rf apples

cat > chocolate

cat chocolate

cat >> chocolate

echo foo > awesome

echo foo >> awesome

cat chocolate awesome

mv chocolate ice-cream

grep <search_term> awesome

less awesome

export NAME=<your_name>

echo $NAME

echo hello $NAME

env

find . -name "*.md"

find . -name "*.md" | wc

sort --help

find . -name "*.md" | <correct sort command>

man

clear

history

hostname

ps

kill -9 <pid>

exit
```

Extras to research
```
alias

curl

wget

xargs

sudo

chmod

chown
```

[source](https://learnpythonthehardway.org/book/appendix-a-cli/ex1.html)

[bash cheat sheet](https://learncodethehardway.org/unix/bash_cheat_sheet.pdf)

## Next
Write your [first program](https://github.com/fouralarmfire/shell-tutorial/blob/master/osx_and_linux/exercises/hello_world.md#hello-world).

