#!/bin/bash

set -ex

sudo apt update && sudo apt upgrade -y

sudo apt install -y git tree ack curl wget xclip htop build-essential

# Install language support
sudo apt install -y python3-dev python3-pip python-is-python3 python3-venv
sudo apt install -y gcc g++ cmake ninja-build
sudo apt install -y lua5.4

# Install llvm
LLVM_VERSION=18
wget https://apt.llvm.org/llvm.sh -O ~/llvm.sh
chmod +x ~/llvm.sh
sudo ./llvm.sh $LLVM_VERSION || { echo "LLVM installation failed"; exit 1; }
sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-$LLVM_VERSION 100 || { echo "clang++ update failed"; exit 1; }
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-$LLVM_VERSION 100 || { echo "clang update failed"; exit 1; }

# Install usefull tools
sudo apt install -y tmux tmuxp

# Clone repos
cd ~/.config
git clone git@gitlab.com:glebka97/config.nvim.git nvim-new
git clone git@gitlab.com:glebka97/nvim-minimal.git
git clone git@gitlab.com:glebka97/nvim-development.git
mkdir ~/.config/tmux
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

mkdir ~/setup
cd ~/setup
git clone git@github.com:gsavchenko97/dotfiles.git
mkdir ~/.fonts
cp ~/setup/dotfiles/fonts/* ~/.fonts/.
fc-cache -fv > /dev/null
# Verify font installation
if fc-list | grep -q "$FONT_NAME"; then
    echo "Font '$FONT_NAME' successfully installed."
else
    echo "Error: Font '$FONT_NAME' installation failed."
    exit 3
fi
ln -s ~/setup/dotfiles/alacritty ~/.config/.

mkdir ~/repos
cd ~/repos
git clone git@gitlab.com:glebka97/junk.git
git clone git@gitlab.com:glebka97/contests.git

mkdir ~/prj
cd ~/prj
git clone git@gitlab.com:glebka97/gbalance.git
git clone git@gitlab.com:glebka97/small-db.git
git clone git@gitlab.com:glebka97/lets-go.git
git clone git@gitlab.com:glebka97/rust-tg-bot.git
git clone git@gitlab.com:glebka97/tg-bot.git

mkdir ~/shad
mkdir ~/ya
