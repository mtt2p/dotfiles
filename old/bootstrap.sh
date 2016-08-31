#!/bin/bash
# Bootstrapping script for my dotfiles. Rename as bootstrap.sh, enter configuration values, save, and run.

platform='unknown'
unamestr=`uname`

if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
    platform='osx'
fi

echo "platform: ${platform}"

export DOTFILES=$PWD
cd $DOTFILES

echo "dotfiles directory: ${DOTFILES}"

echo "initializing submodules"
#git submodule init

cd $DOTFILES;

echo "creating symlinks"
ln -s $DOTFILES/.aliases              $HOME/.aliases
ln -s $DOTFILES/.bash_profile         $HOME/.bash_profile
ln -s $DOTFILES/.bashrc               $HOME/.bashrc
ln -s $DOTFILES/.tmux.conf            $HOME/.tmux.conf
ln -s $DOTFILES/.vimrc                $HOME/.vimrc
ln -s $DOTFILES/.gitconfig            $HOME/.gitconfig



#ln -s $DOTFILES/tmux-${platform}.conf $HOME/.tmux.conf
#ln -s $DOTFILES/dircolors-solarized/dircolors.ansi-universal $HOME/.dir_colors


#mkdir -p ~/.vim/tmp
#mkdir -p ~/.vim/tmp/backup
#mkdir -p ~/.vim/tmp/swap

