#!/bin/bash

echo ~~~ LINUX SETUP ~~~
echo ~~~ START ALL INSTALLATION ~~~


echo ~~~ START: Git group installation ~~~

echo ~~~ install git ~~~
sudo apt -y install git
echo ~~~ install tig ~~~
sudo apt -y install tig
echo ~~~ copy gitconfig ~~~
cp gitconfig ~/.gitconfig

echo ~~~ FINISH: Git group installed ~~~


echo ~~~ START: Vim group installation ~~~

echo ~~~ install vim ~~~
sudo apt -y install vim
echo ~~~ copy vimrc ~~~
cp linuxvimrc ~/.vimrc
echo ~~~ set EDITOR variable for vim ~~~
export EDITOR=vim
echo ~~~ clone Vundle ~~~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo ~~~ FINISH: Vim group installed ~~~


echo ~~~ START: Dev group installation ~~~

echo ~~~ install python3 ~~~
sudo apt -y install python3
echo ~~~ install gcc ~~~
sudo apt -y install gcc
echo ~~~ install cmake ~~~
sudo apt -y install cmake

echo ~~~ FINISH: Dev group installed ~~~


echo ~~~ START: Tools group installation ~~~

echo ~~~ install ack ~~~
sudo apt -y install ack
echo ~~~ install tree ~~~
sudo apt -y install tree

echo ~~~ FINISH: Tools group installed ~~~


echo ~~~ FINISH ALL INSTALLATION ~~~
echo ~~~ LINUX SETUP FINISHED ~~~
