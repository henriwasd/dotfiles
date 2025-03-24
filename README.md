## Setup dot dotfiles
git clone --recurse-submodules https://github.com/henriwasd/dotfiles.git ~/.dotfiles &&
cd ~/.dotfiles &&
rm -rf ~/.zshrc &&
rm -rf ~/.config/nvim &&
rm -rf ~/.gitconfig &&
ln -s ~/.dotfiles/.zshrc ~/.zshrc &&
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig &&
ln -s ~/.dotfiles/.config/nvim ~/.config/nvim


# Dar permissão para a pasta .ssh
```bash
sudo chmod 700 ~/.ssh/
```
```bash
sudo chmod 600 ~/.ssh/*
```
```bash
sudo chown -R ${USER} ~/.ssh/
```
```bash
sudo chgrp -R ${USER} ~/.ssh/
```
