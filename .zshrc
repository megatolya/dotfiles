ZSH=$HOME/.oh-my-zsh

fpath=($HOME/.zsh/func $fpath)
typeset -U fpath

export ZSH_THEME='my'
plugins=(git nyan)

source $ZSH/oh-my-zsh.sh

alias ll='ls -al'

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:~/workspace/vb/bin
export PATH=/usr/local/Cellar/ruby/1.9.3-p362/bin:$PATH
