#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

. ~/.local/anaconda3/etc/profile.d/conda.sh
conda activate

export PATH="$HOME/.local/texlive/2020/bin/x86_64-linux:$PATH"

alias ls='ls --color=auto'
alias ll='ls -lha'
alias lf='ll | grep -v ^d'
alias ld='dir -lh --color=auto'
alias config='/usr/bin/git --git-dir=/home/stefan/dotfiles/ --work-tree=/home/stefan'
alias vim=nvim
alias vi=vim
alias ..='cd ..'
alias home='cd ~'

source $HOME/.bash_functions
