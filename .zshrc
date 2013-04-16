ZSH=$HOME/.oh-my-zsh

fpath=($HOME/.zsh/func $fpath)
typeset -U fpath

export ZSH_THEME='my'

source $ZSH/oh-my-zsh.sh

alias ll='ls -al'
alias ccat='~/pygments/pygmentize -g'
alias s='node ~/dotfiles/static_server'
alias ss='sudo node ~/dotfiles/static_server 80'
alias ff='/Applications/Firefox.app/Contents/MacOS/firefox-bin -p dev'

export PATH=/usr/bin
export PATH=/bin:$PATH
export PATH=/usr/sbin:$PATH
export PATH=/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=~/workspace/vb/bin:$PATH
export PATH=~/usr/local/:$PATH
export PATH=/usr/local/Cellar/ruby/1.9.3-p362/bin:$PATH
export PATH=/usr/local/share/npm/lib/node_modules/bin:$PATH

###-begin-lmd-completion-###
#
# lmd command completion script
#
# (c) Mikhail Davydov
# (c) Isaac Z. Schlueter
# Original file https://github.com/isaacs/npm/blob/master/lib/utils/completion.sh
#
# Installation: lmd completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: lmd completion > /usr/local/etc/bash_completion.d/lmd
#

COMP_WORDBREAKS=${COMP_WORDBREAKS/=/}
COMP_WORDBREAKS=${COMP_WORDBREAKS/@/}
export COMP_WORDBREAKS

if type complete &>/dev/null; then
  _lmd_completion () {
    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$COMP_CWORD" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           lmd completion -- "${COMP_WORDS[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -F _lmd_completion lmd
elif type compdef &>/dev/null; then
  _lmd_completion() {
    si=$IFS
    compadd -- $(COMP_CWORD=$((CURRENT-1)) \
                 COMP_LINE=$BUFFER \
                 COMP_POINT=0 \
                 lmd completion -- "${words[@]}" \
                 2>/dev/null)
    IFS=$si
  }
  compdef _lmd_completion lmd
elif type compctl &>/dev/null; then
  _lmd_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       lmd completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _lmd_completion lmd
fi
###-end-lmd-completion-###
