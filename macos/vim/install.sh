#!/bin/bash
#

# Install vi settings
if [ ! -f "$HOME/.vimrc" ] ; then
  echo "INSTALLING $HOME/.vimrc"
  cp vimrc $HOME/.vimrc
else
  echo "INFO: $HOME/.vimrc exists so skipping install"
fi

# Install vi colors
if [ ! -d "$HOME/.vim/colors" ] ; then
  echo "CREATING colors dir"
  mkdir $HOME/.vim/colors
fi

echo "INSTALLING colors (overwriting)"
cp -f colors/* $HOME/.vim/colors/

