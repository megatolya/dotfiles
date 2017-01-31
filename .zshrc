ZSH=$HOME/.oh-my-zsh

set editing-mode vi
set keymap vi-command

fpath=($HOME/.zsh/func $fpath)
typeset -U fpath
plugins=(git bower brew battery node npm nyan docker gem gitfast gradle jsontools pip tmux web-search)

export TERM="xterm-256color"
export ZSH_THEME='my'

source $ZSH/oh-my-zsh.sh

alias ll='ls -al'
alias please='sudo'
alias pleease='sudo \!-1'
alias grm='git rm $(git ls-files --deleted)'
alias pie='node -p -i -e'
alias pss='please python -m SimpleHTTPServer 80'
alias irebase='git rebase --autosquash -i $(git merge-base develop HEAD)'
alias gti='git'
alias glist="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"

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
export PATH=/opt/nodejs/4/bin:$PATH

export NVM_DIR=~/.nvm

export ANDROID_HOME=~/Library/Android/sdk

export GREP_OPTIONS="--exclude=*.map"

zstyle ':urlglobber' url-other-schema

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    export PATH=~/www/kinopoisk/./node_modules/.bin:$PATH
    export LC_CTYPE="ru_RU.utf8"
    export DEBFULLNAME="Anatoly Ostrovsky"
    export DEBEMAIL=megatolya@yandex-team.ru
    export EMAIL=megatolya@yandex-team.ru
    alias dch='dch --vendor debian'
    alias debuild='debuild --no-lintian'
elif [[ "$OSTYPE" == "darwin"* ]]; then
    source $(brew --prefix nvm)/nvm.sh
    export PATH=/Users/megatolya/Library/Android/sdk/platform-tools:$PATH
    export PATH=/Users/megatolya/Library/Android/sdk/tools:$PATH
    alias kino='ssh dev1.kinopoisk.ru -t "cd www/kinopoisk; zsh --login"'
fi


unstash() {
    git stash show -p stash@{$1} | git apply -R
}

tmuxify() {
    dirname=$(basename $PWD)
    sessions=$(tmux list-sessions -F "#{session_name}" 2>/dev/null)
    new_session=true

    for session in $(tmux list-sessions -F "#{session_name}"); do
        if [ $session = $dirname ]
        then
            new_session=false
        fi
    done

    if [ $new_session = true ]
    then
        tmux new-session -s $dirname
    else
        tmux attach -t ${dirname}
    fi
}


gpr() {
    repo_path_with_host=$(git config --get remote.origin.url | sed s/^http[s]:\\/\\///g | sed s/^git@//g | sed s/:/\\//g | sed s/\.git$//g)
    repo_host=$(echo $repo_path_with_host | sed -Ee "s/.*\/(.+\/.+)/\1/g")
    repo_url=https://${repo_path_with_host}
    branch=`git rev-parse --abbrev-ref HEAD`
    url=${repo_url}/tree/${branch}
    echo url=${url}
    relative_branch=$(curl -i ${url} 2>&1 |\
        grep pull-request-link |\
        sed s/.*href=\"//g | sed s/\".*//)
    echo $relative_branch
    echo "https://github.yandex-team.ru"${relative_branch}
}


# added by travis gem
[ -f /Users/megatolya/.travis/travis.sh ] && source /Users/megatolya/.travis/travis.sh

#eval "$(docker-machine env default)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
