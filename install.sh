#!/bin/bash

# git clone https://github.com/nidup/dotfiles.git
# then run this script

cd ~/

# git config
rm .gitconfig
ln -s ~/git/dotfiles/git/.gitconfig .gitconfig 

# bash aliases
rm .bash_aliases
ln -s ~/git/dotfiles/bash/.bash_aliases .bash_aliases

# vim config
rm .vimrc
ln -s ~/git/dotfiles/vim/.vimrc .vimrc

rm ./vim/colors
ln -s ~/git/dotfiles/vim/.vim/colors .vim/colors

ln -s ~/git/dotfiles/vim/.vim/nidupsnippets .vim/nidupsnippets

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
