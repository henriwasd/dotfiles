## Setup dot dotfiles
cd /tmp && sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si &&
cd ~ &&
yay -Sy make unzip gcc neovim starship vfox lazygit zsh openssh cargo &&
cargo install exa &&
sudo vfox upgrade &&
git clone --recurse-submodules git@github.com:henriwasd/dotfiles.git ~/.dotfiles &&
rm -rf ~/.config/nvim &&
rm -rf ~/.gitconfig &&
git clone git@github.com:henriwasd/nvim.git ~/.config/nvim &&
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &&
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions &&
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting &&
rm -rf ~/.zshrc &&
ln -s ~/.dotfiles/.zshrc ~/.zshrc &&

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
