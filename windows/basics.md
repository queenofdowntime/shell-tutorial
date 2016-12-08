# Basic Commands

If you were able to set up git correctly, run:
```
git clone https://github.com/fouralarmfire/shell-tutorial
cd shell-tutorial
mkdir code
cd code
```

If not run:
```
mkdir shell-tutorial\code
cd shell-tutorial\code
```

Then run `pwd`. You should see `C:\Users\<your_name>\shell-tutorial`.

Now we're going to find out what exactly you just made happen.

The following commands are the ones you will end up using every day to do basic stuff.
As we talk through them, type each one into your terminal, play around and see what they do.

Do not worry about breaking stuff. It would be very, very hard for anything to go wrong with these commands.
Some of them are designed to throw errors, but don't panic. Either ask for help, hit google, or just type something that makes
sense to you; again, it is very hard to break anything using these commands.

Take notes if you want, type them (and I mean type; no copy-pasting) until you are comfortable with what they do.
```
pwd

ls

dir

dir -r

mkdir apples

mkdir apples\oranges\pears\bananas

cd

cd apples

cd ..

pushd apples\oranges\pears\bananas

popd

New-Item cake

cp cake another-cake

copy cake apples\oranges\cookie

cat cake

cat cake,another-cake

mv cake ice-cream

more ice-cream

rm ice-cream

del another-cake

rmdir apples

Write-Host hello!

echo hello!

help

hostname

Get-Process

exit
```

more [Cmdlets and Functions](http://www.adminarsenal.com/powershell/)

[source](https://learnpythonthehardway.org/book/appendix-a-cli/ex1.html)

## Next:
Write your [first program](https://github.com/fouralarmfire/shell-tutorial/blob/master/windows/exercises/hello_world.md).

