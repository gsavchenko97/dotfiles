#!/bin/bash

echo ~~~ setting up workplace ~~~

echo ~~~ install vim ~~~
sudo apt -y install vim
echo ~~~ clone Vundle ~~~
https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo ~~~ copy vimrc ~~~
cp vimrc ~/.vimrc
echo ~~~ copy colorscheme ~~~
cp colors ~/.vim -r
export EDITOR=vim
echo ~~~ OK ~~~

echo ~~~ install python3 ~~~
sudo apt -y install python3
echo ~~~ OK ~~~

echo ~~~ install gcc ~~~
sudo apt -y install gcc
echo ~~~ OK ~~~

echo ~~~ install cmake ~~~
sudo apt -y install cmake
echo ~~~ OK ~~~

echo ~~~ install git ~~~
sudo apt -y install git
echo ~~~ install tig ~~~
sudo apt -y install tig
echo ~~~ copy gitconfig ~~~
cp gitconfig ~/.gitconfig
echo ~~~ OK ~~~

echo ~~~ all what you need successfully installed ~~~
