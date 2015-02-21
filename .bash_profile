#for color
export CLICOLOR=1
if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
  # Pro Tango
  export PS1='\n\[\e[0;30m\]┌─\[\e[0m\]\[\e[01;30m\]\u@\h\[\e[00m\]:\[\e[01;34m\]\w\[\e[00m\]\n\[\e[0;30m\]└───\[\e[0m\]\$ \[\e[00;33m\]$(__git_ps1 "(%s)")\[\e[00m\] '
fi

# Silver Aerogel 
#export PS1='\[\033[01;33m\]\u@\h\[\033[01;31m\] \W\$\[\033[00m\] '

#for brew
if brew list | grep coreutils > /dev/null ; then
  PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
  alias ls='ls -F --show-control-chars --color=auto'
  eval `gdircolors -b $HOME/.dir_colors`
fi

#!/bin/bash
# see: http://blog.tomtung.com/2009/11/cowsay-fortune
#      http://www.commandlinefu.com/commands/view/3584/remove-color-codes-special-characters-with-sed
#      https://github.com/busyloop/lolcat
#
#      requires `fortune` and ruby gem `lolcat`
 
printf "\n"

cmd_sed="$(command -v gsed)" || cmd_sed=sed
cmd_lolcat="$(command -v lolcat_m)" || cmd_lolcat="$(command -v lolcat)"
SaySomething=$(fortune -a -s | $cmd_sed -E "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g")
cowsay $SaySomething | $cmd_lolcat -f

printf "\n"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

#solove fish shell problem
if [ "$1" == "" ] && [[ -z $(ps aux |grep wireshark |grep -v grep) ]]; then
	/usr/local/bin/fish
	echo Goodby!
	exit 0
fi

# Bash Completion
source /usr/local/etc/bash_completion
