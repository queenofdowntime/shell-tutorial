# Mac OSX Setup

1. Hold `cmd` and hit the spacebar.
2. Start typing `terminal` and hit return/enter.
3. Type `cmd` + `,` to set colourscheme, font and other preferences.

Recommended: install [iTerm2](https://www.iterm2.com/downloads.html)

## Command Line Tools
1. Copy and paste into your terminal
`xcode-select --install`
2. Click `install`, `agree` and `done` when the various pop-ups appear.

## Homebrew
1. Copy and paste into your terminal
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
2. Run `brew doctor`: it should return `Your system is ready to brew`.

## git
1. Run:
```
brew update
brew install git
git --version
```

## Clone this repo
If you have set things up successfully you are now ready to clone this repo and get to work!
```
git clone https://github.com/fouralarmfire/shell-tutorial
```
Don't worry if you weren't able to setup git properly, it's not strictly necessary, and you will
be able to continue just fine.

[source](https://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/)


## Next:
[Basic Commands](https://github.com/fouralarmfire/shell-tutorial/blob/master/osx_and_linux/basics.md)
