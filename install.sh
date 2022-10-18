#!/bin/bash
# VARIABLES

FILE=/usr/bin/nvim

echo "is working "

# TO DO detected linux distro

# STEP 1 - Essentials
echo "-----------------------"
echo "Installing essentials "
apt-get update
apt-get install apt-utils
apt-get install sudo 

# STEP 2 - Install TMUX 
echo "-----------------------"
echo "Installing tmux"

apt-get install tmux -y

echo "-----------------------"
echo "Installing fish"

echo 'deb http://download.opensuse.org/repositories/shells:/fish:/release:/3/Debian_11/ /' | sudo tee -a /etc/apt/sources.list
wget -q -O - https://download.opensuse.org/repositories/shells:fish:release:3/Debian_11/Release.key | sudo apt-key add -
sudo apt update
sudo apt install fish -y


echo "-----------------------"
echo "Making fish default shell"
chsh --shell $(which fish)
sudo chsh --shell $(which fish)

echo "-----------------------"
echo "Installing nvim manual"


if [ -f "$FILE" ]; then
  # Take action if $DIR exists. #
  echo "nvim exist, skipping..."
  # Cleaning
  rm ./nvim.appimage 2>/dev/null
  rm -r squashfs-root 2>/dev/null
else
  echo "-----------------------"
  echo "Installing nvim manual"
 echo "$FILE exists."
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
  chmod u+x nvim.appimage
  ./nvim.appimage --appimage-extract
  ./squashfs-root/AppRun --version
  sudo mv squashfs-root /
  sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
  # CLEANING 
  rm ./nvim.appimage
  rm -r squashfs-root
fi