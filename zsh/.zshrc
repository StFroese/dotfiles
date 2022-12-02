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
alias vim=nvim
alias ll='ls -la'

function jptt(){
    # Forwards port $1 into port $2 and listens to it
    ssh -N -f -L localhost:"$1":localhost:"$1" "$2"
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/stefan/mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/stefan/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/Users/stefan/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/Users/stefan/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/Users/stefan/mambaforge/etc/profile.d/mamba.sh" ]; then
    . "/Users/stefan/mambaforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

