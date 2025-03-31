## Setup dot dotfiles
cd /tmp && sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si &&
git clone --recurse-submodules git@github.com:henriwasd/dotfiles.git ~/.dotfiles &&
cd ~ &&
rm -rf ~/.zshrc &&
rm -rf ~/.config/nvim &&
rm -rf ~/.gitconfig &&
ln -s ~/.dotfiles/.zshrc ~/.zshrc &&
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig &&
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions &&
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting &&
git clone git@github.com:henriwasd/nvim.git ~/.config/nvim &&
yay -Sy make unzip gcc neovim starship vfox lazygit

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
