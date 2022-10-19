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
  cp -r .config/tmux/ ~/.config/tmux/
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
echo "Install fish plugin manager"
fish -c 'curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher'
echo "Installing tide with default config"
fish -c 'fisher install IlanCosman/tide@v5'

echo "-----------------------"
echo "Installing nvim manual"
if [ -f "$FILE" ]; then
  # Take action if $DIR exists. #
  echo "nvim exist, skipping..."
  # Cleaning
  rm ./nvim.appimage 2>/dev/null
  rm -r squashfs-root 2>/dev/null
  # Updating nvim plugins 
  nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
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
  # Install packer
  git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
  # Move dotfile to ~/.config user
  cp -r .config/nvim/ ~/.config/nvim/
  # Install plugins
  nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
  nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
fi

echo 'Script executed succesfully'