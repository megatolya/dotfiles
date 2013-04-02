ZSH=$HOME/.oh-my-zsh

fpath=($HOME/.zsh/func $fpath)
typeset -U fpath

export ZSH_THEME='my'

source $ZSH/oh-my-zsh.sh

alias ll='ls -al'

export PATH=/usr/bin
export PATH=/bin:$PATH
export PATH=/usr/sbin:$PATH
export PATH=/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=~/workspace/vb/bin:$PATH
export PATH=~/usr/local/:$PATH
export PATH=/usr/local/Cellar/ruby/1.9.3-p362/bin:$PATH
export PATH=/usr/local/share/npm/lib/node_modules/bin:$PATH
