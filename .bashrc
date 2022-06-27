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

export CDPATH="$HOME/Documents"

alias cl='clear'
alias ..='cd ../'
alias la='ls -la'
alias lx='ls -laX'
alias nnn='nnn -e'
alias cb='xclip -sel clip'
alias neof='clear && neofetch'

# systemctl aliases
alias systop='sudo systemctl stop'
alias sysen='sudo systemctl enable'
alias systart='sudo systemctl start'
alias sysleep='sudo systemctl hybrid-sleep'
alias htof='sudo systemctl stop httpd.service'
alias hton='sudo systemctl start httpd.service'
alias mdof='sudo systemctl stop mariadb.service'
alias mdon='sudo systemctl start mariadb.service'

# dot files alias
alias dof='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# alias mpaudio='mpv --no-video'
# alias dev='st -e npm run dev & disown'

#export ANDROID_HOME=$HOME/Android/Sdk
#export PATH=$PATH:$ANDROID_HOME/emulator
#export PATH=$PATH:$ANDROID_HOME/tools
#export PATH=$PATH:$ANDROID_HOME/tools/bin
#export PATH=$PATH:$ANDROID_HOME/platform-tools
#export PATH=$PATH:$ANDROID_HOME/android-sdks/platform-tools/
#export PATH=$PATH:$ANDROID_HOME/android-sdks/tools/
#export PATH="$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH"
#export JAVA_HOME=/usr/lib/jvm/java-11-openjdk
#export GEM_HOME="$HOME/.local/share/gem/ruby/3.0.0/"
#export PATH="$PATH:$GEM_HOME/bin"
