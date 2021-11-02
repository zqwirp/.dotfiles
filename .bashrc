#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export HISTSIZE=500
export HISTCONTROL=ignoreboth:erasedups
export EDITOR='vim'

export CDPATH=./Documents/

alias cl='clear'
alias ..='cd ../'
alias la='ls -la'
alias lx='ls -laX'
alias nnn='nnn -e'
alias bc='vim ~/.bashrc'
alias vc='vim ~/.vim/vimrc'
alias cb='xclip -sel clip'
alias neof='clear && neofetch'

alias gph='git log --all --decorate --oneline --graph'
alias dof='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dph='dof log --all --decorate --oneline --graph'

alias systop='sudo systemctl stop'
alias sysen='sudo systemctl enable'
alias systart='sudo systemctl start'
alias sysleep='sudo systemctl hybrid-sleep'

alias htof='sudo systemctl stop httpd.service'
alias hton='sudo systemctl start httpd.service'
alias mdof='sudo systemctl stop mariadb.service'
alias mdon='sudo systemctl start mariadb.service'

alias nrs='clear && npm run start'
