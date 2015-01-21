#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )


# Vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
ln -s $DIR/.vimrc ~/.vimrc


# Tmux
ln -s $DIR/.tmux.conf ~/.tmux.conf
tmux source-file ~/.tmux.conf
