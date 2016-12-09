# Mac OSX Setup
1. Go to [iTerm2](https://www.iterm2.com/downloads.html) and follow installation instructions
2. Hold `cmd` and hit the spacebar.
3. Start typing `iTerm2` and hit return/enter when you see the app you want.
4. Type `cmd` + `,` to set colourscheme, font and other preferences.

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

2. Sign up for [Github](https://github.com/) if you have not already done so.
3. Run the following two commands.

  ```
  git config --global user.email "YOUR EMAIL ADDRESS".
  git config --global user.name "YOUR GITHUB USERNAME / ACTUAL NAME".
  ```

4. Check for existing SSH keys with `ls -al ~/.ssh`.
5. Run `ssh-keygen -t rsa -b 4096 -C "YOUR EMAIL ADDRESS"`. (Hit return to any prompts until complete.)
6. Start the SSH agent with `eval "$(ssh-agent -s)"`.
7. Add your new key to the agent: `ssh-add ~/.ssh/id_rsa`.
8. Copy your public key to the clipboard:

  ```
  # either
  pbcopy < ~/.ssh/id_rsa.pub
  # or
  cat ~/.ssh/id_rsa.pub | pbcopy
  ```

9. Login to Github in a browser. Go to `Settings > SSH and GPG keys > New SSH key / Add SSH key`.
10. Fill in the form fields with a name and your copied public key and click save.

## Atom
1. Go to [atom.io](https://atom.io/) and follow the installation instructions.

## Clone this repo
If you have set things up successfully you are now ready to clone this repo and get to work!
```
git clone https://github.com/fouralarmfire/shell-tutorial
```
Don't worry if you weren't able to setup git properly, it's not strictly necessary, and you will
be able to continue just fine.

[source](https://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/)


## Next:
[Basic Commands](https://github.com/fouralarmfire/shell-tutorial/blob/master/osx_and_linux/basics.md#basic-commands)
