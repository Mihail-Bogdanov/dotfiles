#!/bin/bash

# install yay for it to work #
echo "yay must be installed"
echo "network manager must be enabled"

yay --needed --ask 4 -Sy - < packages.txt

sudo mkdir ~/.config

echo " copying files..."

mv ratpoison/ratpoisonrc ~/.ratpoisonrc
mv openbox/ ~/.config/
sudo mv wallpapers/* /usr/share/backgrounds/
rm README.md
mv config/* ~/.config
mv starship.toml
mv .zshrc ~/.zshrc
mv .bashrc ~/.bashrc
sudo systemctl enable ly
sudo systemctl enable plymouth

