#!/bin/bash

echo ~~~ MAC OS SETUP ~~~
echo ~~~ START ALL INSTALLATION ~~~


echo ~~~ START: Git group installation ~~~

echo ~~~ install git ~~~
brew install git
echo ~~~ install tig ~~~
brew install tig
echo ~~~ copy gitconfig ~~~
cp gitconfig ~/.gitconfig

echo ~~~ FINISH: Git group installed ~~~


echo ~~~ START: Vim group installation ~~~

echo ~~~ install vim ~~~
brew install macvim
brew unlink vim
brew link macvim
echo ~~~ copy vimrc ~~~
cp macvimrc ~/.vimrc
echo ~~~ set EDITOR variable for vim ~~~
export EDITOR=vim
echo ~~~ clone Vundle ~~~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo ~~~ FINISH: Vim group installed ~~~


echo ~~~ START: Dev group installation ~~~

echo ~~~ install python3 ~~~
brew install python3
echo ~~~ install gcc ~~~
brew install gcc
echo ~~~ install cmake ~~~
brew install cmake

echo ~~~ FINISH: Dev group installed ~~~


echo ~~~ START: Tools group installation ~~~

echo ~~~ install ack ~~~
brew install ack
echo ~~~ install tree ~~~
brew install tree

echo ~~~ FINISH: Tools group installed ~~~


echo ~~~ FINISH ALL INSTALLATION ~~~
echo ~~~ MAC OS SETUP FINISHED ~~~
