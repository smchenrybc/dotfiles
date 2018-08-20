## CONFIG

# Terminal
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# PHP PATH
# PHPV=`command ls /Applications/MAMP/bin/php/ | sort -n | tail -1`
# export PATH=/Applications/MAMP/bin/php/${PHPV}/bin:$PATH

export PATH="/usr/local/opt/php@7.1/bin:$PATH"
export PATH="/usr/local/opt/php@7.1/sbin:$PATH"

# Other PATHs
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/share/python:$PATH
export PATH=/usr/local/flutter/bin:$PATH
export PATH=/Users/sean/.composer/vendor/bin:$PATH

# Shopt
shopt -s autocd

## ALIASES

# Bash profile
alias bashconf='mate -w ~/.bashrc'
alias bashrel='source ~/.bashrc'

# Brew
alias bci='brew cask install'
alias bcr='brew cask reinstall'
alias bcu='brew cask uninstall'
alias bi='brew install'
alias bs='brew search'
alias bu='brew uninstall'
alias bup='brew update'

# Composer
alias ccp='composer create-project'
alias cgr='composer global require'
alias ci='composer install'
alias cng='composer install && npm install && grunt dev'
alias cu='composer update'

# Finder
# open a file or folder in Finder
alias fopen='open -a "Finder"'
# hide and unhide hidden files
alias hide='chflags hidden'
alias unhide='chflags nohidden'
# kill Finder
alias killfinder='sudo killall -KILL Finder'
# delete .DS_Store files
alias delds='find . -name ".DS_Store" -type f -delete'

# FIXES
# fix for slow "open with" menu
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -seed -r -f -v -domain local -domain user -domain system'
# refresh thumbs (especially in music folders)
alias fixthumbs='qlmanage -r cache && killall Finder'
# fix NPM sass in package folder
alias fixsass='npm rebuild node-sass --force'

# Flutter
alias fup='flutter upgrade'
alias fdoc='flutter doctor'

# Git
alias gp='git push'
alias gpf='git push -f'
alias gpa='git push --all -u'
alias gdf='git diff'
alias gc='git commit'
alias gca='git commit --amend'
alias gco='git checkout'
alias gaa='git add -A'
alias gs='git status'
alias gl='git log'
alias gpl='git pull'
alias gpl1='git pull origin master --allow-unrelated-histories'
alias gcl='git clone'
alias gi='git init'
alias grv='git remote -v'
alias gbr='git branch'
alias gbd='git branch -d'
alias gcm='git commit -m'
alias grro='git remote rm origin'
alias grao='git remote add origin'
alias grc='git rm --cached'
alias gsp='git stash pop'

# hat tip: http://bit.ly/2LlD12c
addthenpush() { git remote add origin "$1"; git push --all -u; }
alias grap='addthenpush '

# Grunt
alias gw='grunt watch'
alias gd='grunt dev'
alias gb='grunt build'

# Hyper
alias hyperconf='subl -n -w ~/.hyper.js'

# Miscellaneous
# turn off boot chime
alias scoff='sudo nvram SystemAudioVolume=%01'

# MP3s
alias mp3='mp3gain && mp3val'
alias mp3gain='find . -type f -iname "*.mp3" -print0 | xargs -0 mp3gain -c -p -r -d 6.0'
alias mp3val='find . -type f -iname "*.mp3" -print0 | xargs -0 mp3val -f -nb -t'

# NPM
alias ni='npm install'
alias nrd='npm run dev'
alias nrp='npm run prod'
alias nrw='npm run watch'
alias nrs='npm run start'

# PHP
alias phpmamp='/Applications/MAMP/bin/php/php7.1.12/bin/php'

# Preview
alias prev='open -a "Preview"'

# SSH
alias dolocal='ssh -N -L 5555:127.0.0.1:3306 root@104.236.218.62 -vv'
alias shuttle="sshuttle -r root@104.236.218.62 -N -e 'ssh -L 5555:127.0.0.1:3306'"
alias dossh='ssh root@104.236.218.62'
alias ssh-gen='ssh-keygen -t rsa -b 4096 -C'
alias ssh-del='ssh-add -D'

# Sublime Text
alias st3='subl -n -w'

# TextMate
alias mate='mate -w'

# Vagrant
alias vba='vagrant box add'
alias vht='vagrant halt'
alias vup='vagrant up'

# WP-CLI
alias wcd='wp core download'
alias wta='wp theme activate'
