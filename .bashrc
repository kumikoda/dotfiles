# Path and Default Text Editor
export PATH=/usr/local/bin:~/bin:/usr/local/sbin:/usr/local/Cellar/f90cache/0.95/libexec:/usr/local/opt/ccache/libexec:${PATH}
export EDITOR='subl -w'
export UBER_HOME="$HOME/Uber"
export PIP_DOWNLOAD_CACHE="$HOME/.pip/cache"
export PGTZ=UTCclear


# Uber
[ -s "$(brew --prefix)/etc/bash_completion" ] && . $(brew --prefix)/etc/bash_completion
[ -s "$HOME/.nvm/nvm.sh" ] && . $HOME/.nvm/nvm.sh

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Terminal Colors
# http://noahfrederick.com/blog/2011/lion-terminal-theme-peppermint/
COLOR_BOLD="\[\e[1m\]"
COLOR_DEFAULT="\[\e[0m\]"
PS1="$COLOR_BOLD\u@\h \w \$ $COLOR_DEFAULT"
export CLICOLOR=1

# symlink sublime 3
#ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/sublime
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '

HISTFILESIZE=1000000000
HISTSIZE=1000000P
HISTCONTROL=ignoredups
