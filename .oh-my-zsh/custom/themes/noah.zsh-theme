#RVM settings
if [[ -s ~/.rvm/scripts/rvm ]] ; then 
  RPS1="%{$fg[yellow]%}rvm:%{$reset_color%}%{$fg[red]%}\$(~/.rvm/bin/rvm-prompt)%{$reset_color%} $EPS1"
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

#Customized git status, oh-my-zsh currently does not allow render dirty status before branch
git_custom_status() {
  local cb=$(current_branch)
  if [ -n "$cb" ]; then
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX$(parse_git_dirty)"
  fi
}

ZSH_THEME_HOST_PREFIX="%{$reset_color%}%{$fg[blue]%}["
ZSH_THEME_HOST_SUFFIX="]%{$reset_color%}%}"

host_name(){
  echo "$ZSH_THEME_HOST_PREFIX%m$ZSH_THEME_HOST_SUFFIX"
}

emoji(){
  cat "$HOME/.emoji"
}

PROMPT='$(host_name)$(git_custom_status)%{$fg[cyan]%}[%~% ]%{$reset_color%}$(emoji)  '
