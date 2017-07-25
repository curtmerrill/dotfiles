#!/bin/bash
#
# Execute this script FROM THIS DIRECTORY to symlink files
# to your home (~/) directory
# 

PWD=$(pwd)

ln -s "$PWD/bash_profile" ~/.bash_profile
ln -s "$PWD/bash_prompt.sh" ~/.bash_prompt.sh
ln -s "$PWD/vimrc" ~/.vimrc
ln -s "$PWD/vim" ~/.vim
ln -s "$PWD/psqlrc" ~/.psqlrc
ln -s "$PWD/tmux.conf" ~/.tmux.conf

# Get submodules (e.g. vim plugins)
git submodule update --init
