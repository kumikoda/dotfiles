#!/bin/bash

# Save current directory as DIR
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Bash
ln -sf $DIR/.bash_profile ~/.bash_profile
ln -sf $DIR/.bashrc ~/.bashrc
ln -sf $DIR/.bash_prompt ~/.bash_prompt
ln -sf $DIR/.inputrc ~/.inputrc

# Git
ln -sf $DIR/.gitignore ~/.gitignore

# Vim - install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Vim - install other bundles
# todo(fix error about font not present before plugins are installed)
ln -sf $DIR/.vimrc ~/.vimrc
vim +PluginInstall +qall

# Tmux
ln -sf $DIR/.tmux_conf ~/.tmux_conf
