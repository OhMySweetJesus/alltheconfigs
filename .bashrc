#
# ~/.bashrc
#

export LANG=en_US.UTF-8
export LOCALE=UTF-8
export EDITOR=/usr/bin/vim

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

force_color_prompt=yes



alias ls='ls --color=auto'
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'
alias i3config='vim ~/.config/i3/config'
alias termiteconfig='vim ~/.config/termite/config'
alias em='emacs -nw'

PS1='[\W]\$ '

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

#mutt background fix
COLORFGBG="default;default"
