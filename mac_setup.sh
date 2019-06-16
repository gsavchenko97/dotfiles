#!/bin/bash

echo ~~~ setting up workplace ~~~

export HOMEBREW_NO_AUTO_UPDATE=1

echo ~~~ install vim ~~~
brew install macvim
echo ~~~ clone Vundle ~~~
https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo ~~~ copy vimrc ~~~
cp vimrc ~/.vimrc
echo ~~~ copy colorscheme ~~~
cp -r colors ~/.vim/
export EDITOR=vim
echo ~~~ OK ~~~

echo ~~~ install python3 ~~~
brew install python3
echo ~~~ OK ~~~

echo ~~~ install gcc ~~~
brew install gcc
echo ~~~ OK ~~~

echo ~~~ install cmake ~~~
brew install cmake
echo ~~~ OK ~~~

echo ~~~ install git ~~~
brew install git
echo ~~~ install tig ~~~
brew install tig
echo ~~~ copy gitconfig ~~~
cp gitconfig ~/.gitconfig
echo ~~~ OK ~~~

echo ~~~ all what you need successfully installed ~~~
