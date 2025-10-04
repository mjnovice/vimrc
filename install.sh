#!/bin/bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s .vimrc ~/.vimrc
vim +PluginInstall +qall
vim +GoInstallBinaries
#assuming it is for debian based linux machines
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
