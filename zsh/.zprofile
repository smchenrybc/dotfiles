#!/usr/local/bin/zsh

############
# PROFILES #
############
# shellcheck source=/Users/sean/.profile
if [ -f ~/.profile ]; then
  source ~/.profile
fi

# shellcheck source=/Users/sean/.profile
if [ -f ~/.zshrc ]; then
  source ~/.zshrc
fi
