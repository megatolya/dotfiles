ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} * %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" ✓ "

PROMPT='%~%  $(git_prompt_info)
$ '

