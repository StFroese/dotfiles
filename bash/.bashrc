# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias vim='nvim'

alias ..='cd ..'

#Colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

#Brew
export PATH=/opt/homebrew/bin:$PATH

#CMake
export PATH=/Applications/CMake.app/Contents/bin:$PATH
export PATH=/Applications/Julia-1.7.app/Contents/Resources/julia/bin:$PATH


function jptt(){
    # Forwards port $1 into port $2 and listens to it
    ssh -N -f -L localhost:$1:localhost:$1 $2
}
