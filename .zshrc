ZSH=$HOME/.oh-my-zsh

set editing-mode vi
set keymap vi-command

fpath=($HOME/.zsh/func $fpath)
typeset -U fpath
plugins=(git bower brew battery node npm nyan docker gem gitfast gradle jsontools pip tmux web-search)

export ZSH_THEME='my'

source $ZSH/oh-my-zsh.sh

alias battery='pmset -g batt'
alias ll='ls -al'
alias ccat='~/pygments/pygmentize -g'
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

export PATH=/usr/local/opt
export PATH=/usr/bin:$PATH
export PATH=/bin:$PATH
export PATH=/usr/sbin:$PATH
export PATH=/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=~/usr/local:$PATH
export PATH=/usr/local/Cellar/ruby/1.9.3-p362/bin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=/usr/local/share/npm/lib/node_modules/bin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH

export NVM_DIR=~/.nvm
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    export PATH=~/www/kinopoisk/./node_modules/.bin:$PATH
    alias e='vim'
    export LC_CTYPE="ru_RU.utf8"
    export DEBFULLNAME="Anatoly Ostrovsky"
    export EMAIL=megatolya@yandex-team.ru
    alias dch='dch --distributor debian'
    alias debuild='debuild --no-lintian'
elif [[ "$OSTYPE" == "darwin"* ]]; then
    source $(brew --prefix nvm)/nvm.sh
    export PATH=/Users/megatolya/Library/Android/sdk/platform-tools:$PATH
    export PATH=/Users/megatolya/Library/Android/sdk/tools:$PATH
    alias kino='ssh dev1.kinopoisk.ru -t "cd www/kinopoisk; zsh --login"'
    alias e='mvim'
fi
