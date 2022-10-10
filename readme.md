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


## Step by step

# Install Neoviem
Desc: Method: appImage

```

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage

./nvim.appimage --appimage-extract

./squashfs-root/AppRun --version

sudo mv squashfs-root /

sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

nvim

```


# Install tmux 
Desc: Unix, Linux Installation

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

# Install fish
Desc: Install fish and tide

```
apt-get install software-properties-common
apt-get update 
apt install fish
```
