# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/davidmasp/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="agnoster"
ZSH_THEME="robbyrussell"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# trying to solve a problem with python#
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
#DISABLE_LS_COLORS="true"

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
plugins=(git tumult web-search osx)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="$PATH:/usr/local/mysql/bin"
export PATH="$PATH:/Users/davidmasp/bin"
export PATH="$PATH:/Users/davidmasp/dotfiles/customscripts"
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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

## LS colors





# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# mysql alias
alias mysqlstart='sudo /usr/local/mysql/support-files/mysql.server start'
alias mysqlstop='sudo /usr/local/mysql/support-files/mysql.server stop'
alias mysqlrestart='sudo /usr/local/mysql/support-files/mysql.server restart'

# kwm aliases
alias kwmstart='launchctl load /usr/local/opt/kwm/homebrew.mxcl.kwm.plist'
alias kwmstop='launchctl unload /usr/local/opt/kwm/homebrew.mxcl.kwm.plist'

# run a shiny app in the working directory
alias shinyApp='R -e "shiny::runApp()"'

# compres targz
alias compresstargz='tar -zcvf'

# Rstudio alias
alias rstudio='open -n /Applications/RStudio.app'

# Color in egrep
alias egrep='egrep --colour'

# git alias
alias giupdate='ga .gitignore && gc -m "gi update"'

# conda start
alias condastart='export PATH="/Users/davidmasp/anaconda/bin:$PATH"'

# safe rm
alias rm='rm -i'

# docker PY
alias dockerpy3='docker run -it --rm --name my-running-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp python:3 python'
# easy to run safe python scripts. Basically you are running the script in a
# docker container with your current directory mounted in the working
# dir of the container so everything you have in your folder is there. Also
# if smth is created there you see it in your folder. Obviously you need
# docker running for this.

#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


## RANGER

function ranger-cd {
    tempfile="$(mktemp -t tmp.XXXXXX)"
    /usr/local/bin/ranger --choosedir="$tempfile" "${@:-$(pwd)}"
    test -f "$tempfile" &&
        if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
	        cd -- "$(cat "$tempfile")"
	    fi
        rm -f -- "$tempfile"
}


### run commands

archey
