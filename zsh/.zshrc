# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/sean/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

###########
# ALIASES #
###########

## Brew
alias bci='brew cask install'
alias bcr='brew cask reinstall'
alias bcu='brew cask uninstall'
alias bi='brew install'
alias bs='brew search'
alias bu='brew uninstall'
alias bup='brew update'

## Composer
alias ccp='composer create-project'
alias cgr='composer global require'
alias ci='composer install'
alias cng='composer install && npm install && grunt dev'
alias cu='composer update'

## DNS
# High Sierra:
alias flushdns='sudo killall -HUP mDNSResponder;say cache flushed'
# Mavericks:
# alias flushdns='dscacheutil -flushcache;sudo killall -HUP mDNSResponder;say cache flushed'

## Finder
# open a file or folder in Finder
alias fopen='open -a "Finder"'
# hide and unhide hidden files
alias hide='chflags hidden'
alias unhide='chflags nohidden'
# kill Finder
alias killfinder='sudo killall -KILL Finder'
# delete .DS_Store files
alias delds='find . -name ".DS_Store" -type f -delete'

## FIXES
# fix for slow "open with" menu
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -seed -r -f -v -domain local -domain user -domain system'
# refresh thumbs (especially in music folders)
alias fixthumbs='qlmanage -r cache && killall Finder'
# fix NPM sass in package folder
alias fixsass='npm rebuild node-sass --force'

## Flutter
alias fup='flutter upgrade'
alias fdoc='flutter doctor'

## Git
alias gaa='git add -A'
alias gbd='git branch -d'
alias gbr='git branch'
alias gc='git commit'
alias gca='git commit --amend'
alias gcl='git clone'
alias gcm='git commit -m'
alias gco='git checkout'
alias gdf='git diff'
alias gi='git init'
alias gl='git log'
alias gp='git push'
alias gpa='git push --all -u'
alias gpf='git push -f'
alias gpl1='git pull origin master --allow-unrelated-histories'
alias gpl='git pull'
alias grao='git remote add origin'
alias grc='git rm --cached'
alias grro='git remote rm origin'
alias grv='git remote -v'
alias gs='git status'
alias gsp='git stash pop'

# hat tip: http://bit.ly/2LlD12c
addthenpush() { git remote add origin "$1"; git push --all -u; }
alias grap='addthenpush '

## Grunt
alias gd='grunt dev'
alias gb='grunt build'
alias gw='grunt watch'

## Hyper
alias hyperconf='mate -w ~/.hyper.js'

## Miscellaneous
# turn off boot chime
alias scoff='sudo nvram SystemAudioVolume=%01'

## MP3s
alias mp3='mp3gain && mp3val'
alias mp3gain='find . -type f -iname "*.mp3" -print0 | xargs -0 mp3gain -c -p -r -d 6.0'
alias mp3val='find . -type f -iname "*.mp3" -print0 | xargs -0 mp3val -f -nb -t'

## NPM
alias ni='npm install'
alias nrb='npm run build'
alias nrd='npm run dev'
alias nrp='npm run prod'
alias nrw='npm run watch'
alias nrs='npm run start'

## PHP
alias phpmamp='/Applications/MAMP/bin/php/php7.1.12/bin/php'

## Preview
alias prev='open -a "Preview"'

## SRM
alias srm='rm -Pv'
alias srmf='rm -Pvrf'

## SSH
alias dolocal='ssh -N -L 5555:127.0.0.1:3306 root@104.236.218.62 -vv'
alias shuttle="sshuttle -r root@104.236.218.62 -N -e 'ssh -L 5555:127.0.0.1:3306'"
alias dossh='ssh root@104.236.218.62'
alias ssh-gen='ssh-keygen -t rsa -b 4096 -C'
alias ssh-del='ssh-add -D'

## Sublime Text
alias st3='subl -n -w'

## TextMate
alias mate='mate -w'

## Vagrant
alias vba='vagrant box add'
alias vht='vagrant halt'
alias vup='vagrant up'

## WP-CLI
alias wcd='wp core download'
alias wta='wp theme activate'

## Zsh profile
alias zshconf='mate -w ~/.zshrc'
alias zshrel='source ~/.zshrc'

##########
# CONFIG #
##########

## Colors
unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1

## Zsh
# shellcheck disable=SC1091
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Change folders without 'cd'
# (in bash: 'shopt -s autocd')
setopt auto_cd

#########
# PATHS #
#########

# Other paths
export PATH="/usr/local/opt/php@7.1/bin:$PATH"
export PATH="/usr/local/opt/php@7.1/sbin:$PATH"
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/share/python:$PATH
export PATH=/usr/local/flutter/bin:$PATH
export PATH=/Users/sean/.composer/vendor/bin:$PATH

## PHP
# PHPV=`command ls /Applications/MAMP/bin/php/ | sort -n | tail -1`
# export PATH=/Applications/MAMP/bin/php/${PHPV}/bin:$PATH
