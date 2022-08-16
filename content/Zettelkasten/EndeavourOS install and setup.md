---
title: "EndeavourOS install and setup"
draft: false
---
# EndeavourOS install and setup

## Programs to install 
- neovim
- obsidian md 
- spotify 
- brave 
- kitty
- google chrome
- flameshot

## Install steps 
### Generate ssh keys
```
ssh-keygen -t ed25519 -C "yhosnysa@uwaterloo.ca"
ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts
```
- add the key to github
- https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account

### Install yay
```
sudo pacman -S yay
```

### Install kitty
```
yay -S kitty
```

### Install fish
```
sudo pacman -S fish
```

### Install neovim
```
sudo pacman -S neovim
cd ~/.config
# comment out theme lines from init.lua
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
# open neovim packer install, packer compile
```

### Install obsidian md
```
yay -S obsidian
cd ~
git clone git@github.com:Hozny/everything.git
```
- This process can be made better with config improvements

### Install emoji fonts

### Install spotify
```
yay -S spotify
```

### Install chrome
```
yay -S google-chrome
```

### Install discord
```
yay -S discord
```

### Install flameshot
```
sudo pacman -S flameshot
```

## Install Go programming language
```
sudo pacman -S flameshot
```

## References
1. 

---
status: #🟦
date: 2021-12-30
tags: [Linux setup](Linux%20setup.md), [Linux](Linux), [[Tutorial]], 