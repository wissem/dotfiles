# old bash_profile
PATH=/usr/local/git/bin:$PATH

alias ll='ls -al'
alias htdocs='cd /Users/wissem/Dev/htdocs'
alias acer='ping -n 192.168.1.6'
alias acerc='ssh wisssem@192.168.1.6'
alias cpwd='pwd | pbcopy'
alias ovh='ssh root@5.196.227.177'

alias gits='git status -sb'
alias ga='git add'
alias gc='git commit'
alias cc='php app/console cache:clear'
alias sfcache='sudo chmod +a "_www allow delete,write,append,file_inherit,directory_inherit" app/cache app/logs && sudo chmod +a "`whoami` allow delete,write,append,file_inherit,directory_inherit" app/cache app/logs'
alias vhost='sudo vim /etc/apache2/extra/httpd-vhosts.conf'
export PATH="/usr/local/mysql/bin:$PATH"


export PATH="/usr/local/php5/bin:$PATH"


# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="avit"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disabplayle auto-setting terminal titleplay.
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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/Users/wissem:/Users/wissem/dev/Android/android-sdk-macosx/platform-tools:/Users/wissem/dev/Android/android-sdk-macosx/tools:/Users/wissem/dev/Android/apache-ant/bin:/Users/wissem/.composer/vendor/bin"

export ANT_HOME="/Users/wissem/dev/Android/apache-ant"
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
