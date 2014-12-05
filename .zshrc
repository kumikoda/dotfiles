#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
export PATH=/usr/local/bin:~/bin:/usr/local/sbin:${PATH}
[ -s "$HOME/.nvm/nvm.sh" ] && . $HOME/.nvm/nvm.sh
# export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
# export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
# [ -s "$(brew --prefix)/bin/virtualenvwrapper.sh" ] && . $(brew --prefix)/bin/virtualenvwrapper.sh

export UBER_HOME="$HOME/Uber"

# source /usr/local/bin/virtualenvwrapper.sh

export VISUAL=vim
export EDITOR=$VISUAL
