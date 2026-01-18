#!/usr/bin/env bash

echo "Installing Packages........"
sleep 5
if [ -x "$(command -v apt-get)" ]; then
	sudo apt update
	yes|sudo apt install vim clangd picom rofi feh flameshot alacritty ghostty fastfetch i3 nodejs npm bat
	yes| sudo apt-get install ninja-build gettext cmake curl build-essential git
	(
		cd ~/
		git clone https://github.com/neovim/neovim
		cd neovim
		make CMAKE_BUILD_TYPE=RelWithDebInfo
		sudo make install
		)
elif [ -x "$(command -v pacman)" ]; then
	sudo pacman -Sy
	yes|sudo pacman -S vim clangd picom rofi feh flameshot alacritty ghostty fastfetch i3 nodejs npm bat
	read -pr "Do you want to buid neovim from source? (yes->y or any other key->no): " choice
	if [[ $choice = "y" ]]; then
		(
			yes|sudo pacman -S ninja-build gettext cmake curl build-essential git
			cd ~/
			git clone https://github.com/neovim/neovim
			cd neovim
			make CMAKE_BUILD_TYPE=RelWithDebInfo
			sudo make install
		)
	else
		yes|sudo pacman -S neovim
elif [ -x "$(command -v zypper)" ]; then
	sudo zypper patch
	yes|sudo zypper install vim vim-data clangd picom rofi feh flameshot alacritty fastfetch ghostty i3 nodejs npm bat
	read -pr "Do you want to buid neovim from source? (yes->y or any other key->no): " choice
	if [[ $choice = "y" ]]; then
		(
			yes|sudo zypper install ninja-build gettext cmake curl build-essential git
			cd ~/
			git clone https://github.com/neovim/neovim
			cd neovim
			make CMAKE_BUILD_TYPE=RelWithDebInfo
			sudo make install
		)
	else
		yes|sudo zypper install neovim

fi
