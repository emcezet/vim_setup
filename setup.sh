#!/bin/bash

# Vim setup script

# Bundle manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Create .vimrc in home folder

if [ -f ~/.vimrc ]; then
	echo ".vimrc exists in defualt location!"
	exit -1
fi

touch ~/.vimrc

if [ ! -f sample_vimrc ]; then
	echo "sample_vimrc does not exist in git directory!"
	exit -1
fi

cat sample_vimrc > ~/.vimrc

# Clone plugins that I like and add plugin-specific configs.

# NERDTree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

# To always open NERDTree
echo 'autocmd vimenter * NERDTree' >> ~/.vimrc

# Set color in vimrc
echo 'colo pablo' >> ~/.vimrc
echo 'syntax on' >> ~/.vimrc


# REMEMBER TO RUN :pluginInstall after running this script!!!

