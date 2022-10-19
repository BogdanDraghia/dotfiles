<p align="center">
  <img src="https://user-images.githubusercontent.com/76971618/194778853-82acfaa1-a542-4cd9-a4ce-d472f6c9d0b7.png"/>
</p>

---
Hello, welcome to my personal development setup.
<p align="center" width="100%">
    <img  width="10%" src="https://user-images.githubusercontent.com/76971618/194780421-77311a51-a791-4d9b-a3b2-10f79bc823cf.png">
    <img  width="10%" height="100px" src="https://user-images.githubusercontent.com/76971618/194780661-1d431e5b-2041-49d3-98d5-ca88a8b68d72.png">
    <img width="10%" src="https://user-images.githubusercontent.com/76971618/194780420-ebc3a804-0611-4a44-8c10-c7e58ed42ffc.png">
    <img  width="10%" height="100px" src="https://user-images.githubusercontent.com/76971618/194780661-1d431e5b-2041-49d3-98d5-ca88a8b68d72.png">
    <img width="10%" src="https://user-images.githubusercontent.com/76971618/194780423-17846b3c-e82f-4355-bdf5-03833bd1b51d.png">
</p>
---



Existing script v1 to install all the steps beneath, make sure to read it before executing !

```
chmod u+x ./install.sh && ./install.sh
```


# Essential

```
$ apt-get update 
$ apt-get install apt-utils 
$ apt-get install sudo 

```

# Install tmux 

```
$ apt-get install tmux 
```

# Install fish 

First method for debian distro working thanks to @Authmane Terki

```
$ echo 'deb http://download.opensuse.org/repositories/shells:/fish:/release:/3/Debian_10/ /' | sudo tee -a /etc/apt/sources.list
$ wget -q -O - https://download.opensuse.org/repositories/shells:fish:release:3/Debian_10/Release.key | sudo apt-key add -
$ sudo apt update
$ sudo apt install fish
```
To setup fish default shell 
```
chsh --shell $(which fish)
sudo chsh --shell $(which fish)
```


This method can cause false virus alarm, if is posible try the recomended download method from fish-shell repository 

```
$ sudo apt install build-essential cmake ncurses-dev libncurses5-dev libpcre2-dev gettext

$ git clone https://github.com/fish-shell/fish-shell.git  
cd fish-shell; cmake .; make; sudo make install

# Install fisher - plugin manager

$ curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

```


# Install nvim 

```
$ curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage

$ ./nvim.appimage --appimage-extract

$ ./squashfs-root/AppRun --version

$ sudo mv squashfs-root /

$ sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

# Test

$ nvim --version

# Packer plugin manager

$ git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim


## nvim plugin list

- wbthomason/packer.nvim - plugin manager
- nvim-lualine/lualine.nvim - statuline configure 
- norcalli/nvim-colorizer.lua - color hightlighter
- projekt0n/github-nvim-theme - github theme 
- neovim/nvim-lspconfig - configs for lsp client
- kyazdani42/nvim-web-devicons - lua icons for vim 
- williamboman/mason.nvim - package manager for neovim 
- williamboman/mason-lspconfig.nvim 
- nvim-telescope/telescope-file-browser .nvim
- hrsh7th/cmp-buffer
- hrsh7th/cmp-nvim-lsp
- hrsh7th/nvim-cmp
- onsails/lspkind-nvim
- nvim-telescope/telescope.nvim
