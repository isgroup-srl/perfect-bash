# Shell is non-interactive. Be done now!
[ -z "$PS1" ] && return
[[ $- != *i* ]] && return

# Display
shopt -s checkwinsize

# Umask
umask 077

# Colors
eval "`dircolors -b`"
export PS1='\[\033[01;33m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '

# Aliases
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
#alias grep='grep --color=auto'
#alias fgrep='fgrep --color=auto'
#alias egrep='egrep --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

# No history
export HISTFILE=/dev/null
export HISTCONTROL=ignoredups
export HISTFILESIZE=2
export HISTSIZE=100000000

# Http proxy for wget & co.
#export http_proxy="antani"
#export PROXY="antani"
unset http_proxy
unset PROXY

# Encryption
encrypt(){ gpg -ac --no-options "$1"; }
decrypt(){ gpg --no-options "$1"; }

# Completion
[ -f /etc/bash_completion ] && . /etc/bash_completion
