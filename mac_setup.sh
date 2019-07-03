#!/bin/bash

echo ~~~ MAC OS SETUP ~~~

export HOMEBREW_NO_AUTO_UPDATE=1

echo ~~~ install vim ~~~
brew install macvim
brew unlink vim
brew link macvim
echo ~~~ copy vimrc ~~~
cp macvimrc ~/.vimrc
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
echo ~~~ clone Vundle ~~~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo ~~~ install ack ~~~
brew install ack
echo ~~~ install tree ~~~
brew install tree

echo ~~~ OK ~~~

echo ~~~ all what you need successfully installed ~~~
