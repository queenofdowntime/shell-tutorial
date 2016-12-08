# Windows Setup

### Windows < v10
1. Go to `Start` and type `powershell` into `Search programs and files`
2. Hit return/enter.
3. Now you can setup [git](https://github.com/fouralarmfire/shell-tutorial/blob/master/windows/setup.md#git).

### Windows 10
1. Click `Start`, and go to `System > About`. Check the `System type` to the right of the screen.
2. If you DO NOT see `32-bit operating system, x64-based processor` or `64-bit operating system, x64-based processor`,
go to [Windows < v10](https://github.com/fouralarmfire/shell-tutorial/blob/master/windows/setup.md#windows--v10).
3. Open `Settings` and go to `Update & Security > For Developers`.
4. Activate `Developer mode`.
5. Open `Control Panel`, go to `Programs > Programs and Features` and click `Turn Windows Features On or Off`.
Check the box for `Windows Subsystem for Linux (Beta)` and click `OK`.
6. When asked, click `Restart Now`.
7. After the reboot, click `Start`, type `bash` and hit return/enter.
8. The first time you open this it will ask you to agree to terms of service and create an account with a password.
9. Finally, click `Start` and type `bash` or `ubuntu` to open the shell.
3. Now you can setup [git](https://github.com/fouralarmfire/shell-tutorial/blob/master/windows/setup.md#git).

If you are having problems, ask for help or more info can be found [here](http://www.howtogeek.com/249966/how-to-install-and-use-the-linux-bash-shell-on-windows-10/)

## git
1. If you follwed the steps for Windows versions earlier than 10, follow the installation instructions [here](https://git-for-windows.github.io/),
and say yes to defaults during the installation (ask for help if not sure). At the end select `Launch git`, which should open a bash emulator app.
2. If you follwed the steps for Windows 10, and are running the Linux subsystem, run `apt-get install -y git`.
3. Sign up for [Github](https://github.com/) if you have not already done so.
4. Run the following two commands.
```
git config --global user.email "YOUR EMAIL ADDRESS".
git config --global user.name "YOUR GITHUB USERNAME / ACTUAL NAME".
```
5. Run `ssh-keygen -t rsa -b 4096 -C "YOUR EMAIL ADDRESS"`. (Hit return to any prompts until complete.)
6. Start the SSH agent with `eval "$(ssh-agent -s)"`.
7. Add your new key to the agent: `ssh-add ~/.ssh/id_rsa`.
8. Copy your public key to the clipboard.
9. Login to Github in a browser. Go to `Settings > SSH and GPG keys > New SSH key / Add SSH key`.
10. Fill in the form fields with a name and your copied public key and click save.


[more info](http://guides.beanstalkapp.com/version-control/git-on-windows.html)

## Clone this repo
If you have set things up successfully you are now ready to clone this repo and get to work!
```
git clone https://github.com/fouralarmfire/shell-tutorial
```
Don't worry if you weren't able to setup git properly, it's not strictly necessary, and you will
be able to continue just fine.

## Next:
[Basic Commands](https://github.com/fouralarmfire/shell-tutorial/blob/master/osx_and_linux/basics.md) for Windows 10 with Linux Subshell

Or:

[Basic Commands](https://github.com/fouralarmfire/shell-tutorial/blob/master/windows/basics.md) for Windows < 10 or v10 without Linux Subshell
