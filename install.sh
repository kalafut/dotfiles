#!/bin/bash

dir=~/dotfiles
files="vimrc gvimrc zshrc zshenv taskrc"

for file in $files; do
    ln -sf $dir/$file ~/.$file
done
