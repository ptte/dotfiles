# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

alias git=hub
alias pr="hub pull-request"
alias check='git checkout'
alias status='git status'
alias gdiff='git diff'
alias commit='git commit'
alias push='git push'
alias add='git add -p'
alias pull='git pull'
alias rebase='git rebase'
alias lg="git log --pretty=format:'%Cred%h%Creset %C(bold blue)<%an>%Creset%C(yellow)%d%Creset %Cgreen(%cr)%Creset %s' --abbrev-commit --date=relative"
alias mortgagetest='NODE_ENV=test PORT=33990 mocha --no-timeouts --require ./lib/type-check-transform.js'
alias db-update='cd ~/code/mortgage/mortgage && NODE_ENV=test make migrate-schema && make migrate-schema'
alias testvisuals='pytest -rwxs --pdb --base-url http://local.better.com:9000 --driver Chrome --capability resolution 1440x1440'
alias run='PORT=3001 LOCAL_DB=mortgage_postgres_1 make run'
alias docker_clean_images='docker rmi $(docker images -a --filter=dangling=true -q)'
alias docker_clean_ps='docker rm $(docker ps --filter=status=exited --filter=status=created -q)'
alias pipall='pip install -r requirements.txt -i https://$ARTIFACTORY_USER:$ARTIFACTORY_PASSWORD@artifactory.bettermg.com/artifactory/api/pypi/pypi/simple'
alias better='cd ~/code/mortgage'
alias aws-super='eval $(make assume-super-developer)'
alias aws-unset='eval $(make unset)'
alias aws-ecr-login='make ecr-login'
alias aws-creds='aws-unset && aws-super && aws-ecr-login'

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
plugins=(git,brew,brew-cask,osx,kubectl)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
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

#export GOPATH=$HOME/go
#export PATH=$GOPATH/bin:$PATH
#export PATH="$PATH:$HOME/.bin"
#

export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

source ~/.secrets.sh
export PATH="/usr/local/bin:$PATH"
