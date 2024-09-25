#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"
alias config='/usr/bin/git --git-dir=/home/tobias/.cfg --work-tree=/home/tobias'

alias godot='/usr/bin/godot'

# Shows me the storage. x out of y
alias storageleft='df -h --total | grep total'

