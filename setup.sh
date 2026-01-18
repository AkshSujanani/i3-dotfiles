#!/usr/bin/env bash

if [[ ! -d ~/.config ]]; then
	mkdir ~/.config
	mkdir ~/.config/nvim
	mkdir ~/.config/picom
	mkdir ~/.config/fastfetch
	mkdir ~/.config/rofi
	mkdir ~/.config/alacritty
	mkdir ~/.config/ghostty
	mkdir ~/.config/i3
fi

chmod +x installation-script/*
(
	cd installation-script
	./applications.sh
	./plugs.sh
	./move.sh
	)

