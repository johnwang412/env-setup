#!/bin/bash
#
# Commands are idempotent

### Create scripts dir
mkdir -p $HOME/scripts

### Git stuff
# Install git completion
cp git/scripts/git-completion.bash $HOME/scripts/
echo "INSTALLED $HOME/scripts/git-completion.bash"
# Install git config
if [ ! -f "$HOME/.gitconfig" ] ; then
  cp git/env-settings/gitconfig $HOME/.gitconfig
  echo "INSTALLED $HOME/.gitconfig"
else
  echo "INFO: $HOME/.gitconfig exists so skipping install"
fi

### VIM stuff
# Install vi settings
if [ ! -f "$HOME/.vimrc" ] ; then
  cp vim/vimrc $HOME/.vimrc
  echo "INSTALLED $HOME/.vimrc"
else
  echo "INFO: $HOME/.vimrc exists so skipping install"
fi
# Install vi colors
if [ ! -d "$HOME/.vim/colors" ] ; then
  mkdir $HOME/.vim/colors
fi
cp -f vim/colors/* $HOME/.vim/colors/
echo "INSTALLED vim colors (overwrote as needed)"

# 2025-04-02 - not sure if this is relevant - commenting out for now
# # key repeat in apps - RESTART needed
# defaults write -g ApplePressAndHoldEnabled -bool false

