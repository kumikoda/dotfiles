#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Vim
ln -sf $DIR/.vimrc ~/.vimrc
vim +PluginInstall +qall

# Tmux
ln -sf $DIR/.tmux_conf ~/.tmux_conf
