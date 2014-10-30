# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="furio"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colored-man colorize github jira vagrant virtualenv pip python brew osx zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="./node_modules/.bin:/Users/MasterMac/.rvm/gems/ruby-2.1.2/bin:/Users/MasterMac/.rvm/gems/ruby-2.1.2@global/bin:/Users/MasterMac/.rvm/rubies/ruby-2.1.2/bin:/usr/local/opt/coreutils/libexec/gnubin:/Users/MasterMac/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls="gls --color=auto"
# LS colors, made with http://geoff.greer.fm/lscolors/
#eval `gdircolors ~/dotfile/dircolors-solarized.256dark`
export LSCOLORS="Gxfxcxdxbxegedabagacad"
export LS_COLORS='no=00:fi=00:di=01;34:ln=00;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=41;33;01:ex=00;32:*.dll=01;32:*.tar=00;31:*.tbz=00;31:*.tgz=00;31:*.rpm=00;31:*.deb=00;31:*.zip=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.bmp=01;35:*.gif=01;35:*.jpg=01;35:*.jpeg=01;35:*.png=01;35:'

# see: http://blog.tomtung.com/2009/11/cowsay-fortune
#      http://www.commandlinefu.com/commands/view/3584/remove-color-codes-special-characters-with-sed
#      https://github.com/busyloop/lolcat
#      https://github.com/dorentus/mruby-lolcat-bin
#
#      requires `fortune`, `cowsay`,
#        and ruby gem `lolcat` or its mruby version equivalent
 
#export LANG="en_US.UTF-8"
#export PATH="/usr/games:/usr/local/bin:$PATH"

cmd_sed="$(command -v gsed)" || cmd_sed=sed
cmd_lolcat="$(command -v lolcat_m)" || cmd_lolcat="$(command -v lolcat)"
SaySomething=$(fortune -a -s | $cmd_sed -E "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g")
cowsay $SaySomething | $cmd_lolcat -f

printf "\n"


