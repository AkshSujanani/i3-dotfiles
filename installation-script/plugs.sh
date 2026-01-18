#!/usr/bin/env bash

echo "Starting Plugin-managers installation..."
sleep 5

cp -r Vim/.vimrc ~/

#Vim plug(for vim)
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Vim plug(for neovim)
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#starship setup
curl -sS https://starship.rs/install.sh | sh

clear
