(Do not worry too much about the commands we are running here: all will be explained soon, this is just to get your system ready to go. If you are curious, feel free to google to your heart's content.)

# Mac OSX Setup
1. Go to [iTerm2](https://www.iterm2.com/downloads.html) and follow installation instructions
2. Hold `cmd` and hit the spacebar.
3. Start typing `iTerm2` and hit return/enter when you see the app you want.
4. Type `cmd` + `,` to set colourscheme, font and other preferences.

## Command Line Tools
1. Copy and paste into your terminal

  `xcode-select --install`

2. Click `install`, `agree` and `done` when the various pop-ups appear.

## git
1. Run:

  ```
  brew update
  brew install git
  git --version
  ```

2. Sign up for [Github](https://github.com/) if you have not already done so, and complete their beginner's guide.
3. Run the following two commands to save your login information to your computer. Every time you "push" (save) code to git, these credentials will be used to identify you.

  ```
  git config --global user.email "YOUR EMAIL ADDRESS"
  git config --global user.name "YOUR GITHUB USERNAME or ACTUAL NAME"
  ```

4. Run `ssh-keygen -t rsa -b 4096 -C "YOUR EMAIL ADDRESS"`. (Hit return to any prompts until complete.)
5. Start the SSH agent with `eval "$(ssh-agent -s)"`. ([SSH](https://www.digitalocean.com/community/tutorials/ssh-essentials-working-with-ssh-servers-clients-and-keys) is a form of security)
6. Add your new key to the agent: `ssh-add ~/.ssh/id_rsa`.
7. Copy your public key to the clipboard:

  ```
  # either
  pbcopy < ~/.ssh/id_rsa.pub
  # or
  cat ~/.ssh/id_rsa.pub | pbcopy
  # these commands are the equivalent of looking at the file and pressing <Command-C>
  ```

8. Login to Github in a browser. Go to `Settings > SSH and GPG keys > New SSH key / Add SSH key`.
9. Fill in the form fields with a name and your copied public key and click save.

## Homebrew
1. Copy and paste into your terminal

  ```
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  ```

2. Run `brew doctor`: it should return `Your system is ready to brew`.

## Atom
1. Go to [atom.io](https://atom.io/) and follow the installation instructions.

## Clone this repo
If you have set things up successfully you are now ready to clone this repo and get to work!
```
git clone https://github.com/fouralarmfire/shell-tutorial
```

[source](https://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/)


## Next:
[Basic Commands](https://github.com/fouralarmfire/shell-tutorial/blob/master/osx_and_linux/basics.md#basic-commands)
