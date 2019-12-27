ZSH=$HOME/.oh-my-zsh

set editing-mode vi
set keymap vi-command

fpath=($HOME/.zsh/func $fpath)
typeset -U fpath
plugins=(docker gitfast)

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

export ANDROID_HOME=~/Library/Android/sdk

zstyle ':urlglobber' url-other-schema

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    export PS1="$(hostname) ${PS1}"
fi

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



# added by travis gem
[ -f /Users/megatolya/.travis/travis.sh ] && source /Users/megatolya/.travis/travis.sh

ssh-add ~/.ssh/id_rsa &>/dev/null

#eval "$(docker-machine env default)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

eval "$(pyenv init -)"

# The next line updates PATH for Yandex Cloud CLI.
if [ -f '/Users/megatolya/yandex-cloud/path.bash.inc' ]; then source '/Users/megatolya/yandex-cloud/path.bash.inc'; fi

