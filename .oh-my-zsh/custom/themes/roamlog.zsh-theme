local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
local user_host='%{$terminfo[bold]$fg[green]%}%n%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%} %~%{$reset_color%}'
#local git_branch='$(git_prompt_info)%{$reset_color%} $(git_prompt_status)%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'

#if [ $UID -eq 0 ]; then
    #local rvm_ruby=''
#else
    #local rvm_ruby='%{$fg[red]%}‹$(~/.rvm/bin/rvm-prompt i v g)›%{$reset_color%}'
#fi

PROMPT="╭─ ${user_host}${current_dir} ${rvm_ruby} ${git_branch}
╰─%B ➤ %b "
RPS1='$(vi_mode_prompt_info) ${return_code}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%}›%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}%B✘ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔ %{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} ✈"
#ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ✭"
#ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✗"
#ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ➦"
#ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} ✂"
#ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[grey]%} ✱"

export LSCOLORS="exfxcxdxbxbxbxbxbxbxbx"
export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=31;40:cd=31;40:su=31;40:sg=31;40:tw=31;40:ow=31;40:"

