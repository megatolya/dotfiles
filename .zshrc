ZSH=$HOME/.oh-my-zsh

set editing-mode vi
set keymap vi-command

fpath=($HOME/.zsh/func $fpath)
typeset -U fpath
plugins=(osx git bower brew battery github node npm)

export ZSH_THEME='my'

source $ZSH/oh-my-zsh.sh

alias battery='pmset -g batt'
alias ll='ls -al'
alias ccat='~/pygments/pygmentize -g'
alias s='node ~/dotfiles/static_server'
alias ss='sudo node ~/dotfiles/static_server 80'
alias ff='/Applications/Firefox.app/Contents/MacOS/firefox-bin -p dev'
alias please='sudo'
alias pleease='sudo \!-1'
alias grm='git rm $(git ls-files --deleted)'
alias bro='/Applications/Yandex.app/Contents/MacOS/Yandex'
alias o='open'
alias pie='node -p -i -e'
alias gtree='git log --graph --oneline --decorate --all'
alias ps='python -m SimpleHTTPServer'
alias pss='please python -m SimpleHTTPServer 80'
alias preview='groff -Tps > /tmp/tmp.ps && open -a Preview /tmp/tmp.ps'

export PATH=/usr/local/opt/
export PATH=/usr/bin:$PATH
export PATH=/bin:$PATH
export PATH=/usr/sbin:$PATH
export PATH=/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=~/workspace/vb/bin:$PATH
export PATH=~/usr/local/:$PATH
export PATH=/usr/local/Cellar/ruby/1.9.3-p362/bin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=/usr/local/share/npm/lib/node_modules/bin:$PATH
export PATH=/usr/local/share/npm/bin/:$PATH
