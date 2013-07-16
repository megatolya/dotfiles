ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} * %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" ✓ "

PROMPT='%{$fg[cyan]%}%~%{$reset_color%}%{$fg[blue]%} %{$reset_color%}$(git_prompt_info)%{$reset_color%} 
⌘  '

