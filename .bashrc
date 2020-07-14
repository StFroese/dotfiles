#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

. ~/.local/anaconda3/etc/profile.d/conda.sh
conda activate

export PATH="$HOME/.local/texlive/2020/bin/x86_64-linux:$PATH"
alias config='/usr/bin/git --git-dir=/home/stefan/dotfiles/ --work-tree=/home/stefan'
