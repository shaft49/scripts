#!/bin/sh

# Shell scripts to install software on ubuntu automatically.
# Run the scriptss as root by typing: sudo sh ubuntu-setup.sh

# 0. First go to home, update and upgrade
cd ~
apt update -y
apt upgrade -y
# apt install wget curl git -y
# 1. Install google chrome

#mkdir tmp
#cd tmp/
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#dpkg -i google-chrome*.deb
#apt install -yf
#dpkg -i google-chrome*.deb
#apt install -yf
#cd ..
#rm -rf tmp/

# 2. Install vscode

#mkdir tmp
#cd tmp/

#wget https://az764295.vo.msecnd.net/stable/cd9ea6488829f560dc949a8b2fb789f3cdc05f5d/code_1.46.1-1592428892_amd64.deb

#dpkg -i code_1.46.1-1592428892_amd64.deb
#cd ..
#rm -rf tmp/

# 3. Install ZSH and Oh-My-ZSH
# apt install zsh
# chsh -s /bin/zsh # if that doesn't work, try usr/bin/zsh or $(which zsh)
# # close and open terminal to see the changes, if doesn't work log out and log in
# # open terminal and you'll see a prompt, choose option 2, and you're good to go
# echo $SHELL #it should be like usr/bin/zsh

# 4. Install Oh-My-ZSH to customize the terminal

# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# if doesn't work, try this
# sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# you'll see the change in terminal

# Open the .zshrc file and set ZSH_THEME = "ys"
# You can custoize in your own way

# 5. Install Postman

# wget https://dl.pstmn.io/download/latest/linux64
# sudo snap install postman

# 6. Install Thunar File Manager
# sudo apt-get update -y
# sudo apt-get install -y thunar

# # 7. Git Configure
# git config --global user.email "your_email@example.com"
# git config --global user.name "your_name"
# git config --global diff.tool kdiff3
# git config --global merge.tool kdiff3
# git config --global core.editor "code"

# To generate SSH keys
# ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
# cd ~/.ssh -> copy the .pub and paste it into gitlab/github

# 8. Install Geany

# sudo apt install geany

# Configure Geany preferences:
# Open preferences with ctrl+alt+P.
# In Keybindings tab, set Switch to Editor as F1 and confirm overriding, then Switch to VTE as F2 (VTE is built-in terminal).
# In Terminal tab, mark Follow path of the current file. Terminal will now automatically change a path after you open a new file.
# (optional) In Editor tab, change Comment toggle marshovonker to an empty string or a single space.
# Open any C++ file in Geany, go to Build -> Set Build Commands and copy my flags.
# Compile (F8): g++ -std=c++17 -Wshadow -Wall -o "%e" "%f" -O2 -Wno-unused-result
# Build (F9): g++ -std=c++17 -Wshadow -Wall -o "%e" "%f" -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG
# If you get compilation errors, try changing from c++17 to c++14 and/or removing sanitizers (two fsanitize flags).
# If your computer beeps after compilation, unmark Beep on errors in Edit -> Preferences -> General -> Miscellaneous.
# Open a file ~/.bashrc and uncomment a line #force_color_prompt=yes in order to get colorful terminal in Geany. Restart geany or run source ~/.bashrc to trigger the change.
# Or use zsh