# bash_profile is for macs only
# configs stored in .bashrc instead
if [ -f $HOME/.bashrc ]; then
    source $HOME/.bashrc
fi

export PATH="$HOME/.cargo/bin:$PATH"
