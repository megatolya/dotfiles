export PATH=/usr/local/Cellar/mongodb/2.2.2-x86_64:$PATH
export PATH=/usr/local/Cellar/ruby/1.9.3-p362/bin:~/bin:$PATH
export PATH=~/bin:$PATH
export PATH=~/workspace/vb/bin:$PATH
source ~/git_comp.sh

alias ls='ls -G'
alias ll="ls -al"

# bash prompt
case "$TERM" in
    xterm-color|xterm-256color) color_prompt=yes;;
esac

if [ "$color_prompt" = yes ]; then
    #PS1='\[\033[00;31m\]\h\[\033[00m\] £ \[\033[01;34m\]\W\[\033[01;30m\]›\[\033[00m\] '
    PS1='\[\033[00;31m\]\h\[\033[00m\] £ \[\033[01;34m\]\w\n  \[\033[01;30m\]›\[\033[00m\] '
else
    # Default is: PS1='\h:\W \u\$ '
    #PS1='\h £ \w\n  › '
    PS1='\w\n  › '
fi

unset color_prompt

# Node.js root directory for npm modules
export NODE_PATH=`npm root -g`
# {{{
# Node Completion - Auto-generated, do not touch.
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}
