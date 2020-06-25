#!/bin/bash

# Shell scripts to install pyenv.
# Run the scripts as root by typing: sudo sh pyenv.sh

# 0. First go to home, update and upgrade
cd ~
apt update -y
apt upgrade -y

sudo apt-get install -y build-essential libbz2-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev tk-dev
# optional scientific package headers (for Numpy, Matplotlib, SciPy, etc.)
sudo apt-get install -y libpng-dev libfreetype6-dev
https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | zsh #(could be bash)    

# copy paste the last portion shown in the terminal in the .zshrc or .bashrc file and open the terminal again
# export PATH="$HOME/shovon/.pyenv/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

# to install python3.6.9
# pyenv install 3.6.9
# create virtualenv with specific python version
# pyenv virtualenv 3.6.9 .venv
# make the venv global
# pyenv global general
# make it local
# pyenv loval $(name)