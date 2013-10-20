ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[blue]%} : %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

if [[ -s ~/.rvm/scripts/rvm ]] ; then
  RPS1="%{$fg[blue]%}\$(~/.rvm/bin/rvm-prompt v p g)%{$reset_color%} $EPS1"
fi

PROMPT='%{$fg[blue]%}%n%{$reset_color%}%{$fg[NCOLOR]%} %~$(git_prompt_info)${fg[blue]%} ⸫ '
