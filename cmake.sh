#!/bin/bash

# Shell scripts to install cmake.
# Run the scripts as root by typing: sudo sh cmake.sh

# 0. First go to home, update and upgrade
cd ~
apt update -y
apt upgrade -y
sudo apt-get -y install cmake
which cmake #if installed correctly will show the path
cmake --version