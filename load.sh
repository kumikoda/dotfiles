#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Bash
ln -sf $DIR/.bash_profile ~/.bash_profile
ln -sf $DIR/.bash_prompt ~/.bash_prompt
source ~/.bash_profile

# Vim
ln -sf $DIR/.vimrc ~/.vimrc
vim +PluginInstall +qall

# Tmux
ln -sf $DIR/.tmux_conf ~/.tmux_conf
