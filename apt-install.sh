#!/bin/bash -x
sudo su
USER="/home/micr"
add-apt-repository ppa:gnome-terminator -y
apt-get update
apt-get upgrade
apt-get install xmonad libghc-xmonad-dev libghc-xmon ad-contrib-dev xmobar xcompmgr nitrogen stalonetray moreutils synapse consolekit ssh-askpass-gnome terminator
apt-get install gdm
apt-get remove unity lightdm ubuntu-desktop
apt-get install git git-flow zsh vim keepassx keepass2 silversearcher-ag



# aws cli and pip
apt-get install libyaml-dev python-pip
pip install awscli

# vundle and vim
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
cp $HOME/.vimrc $HOME/.vimrc.origin
cp .vimrc $HOME/.vimrc
vim +PluginInstall +qall

# xmonad
cp .xmonad/* $HOME/.xmonad -r
echo "Creating xmonad xsession configuration..."
mv /usr/share/xsessions/xmonad.desktop /usr/share/xsessions/xmonad.desktop.original
cp $HOME/.xmonad/xmonad.desktop /usr/share/xsessions
chmod a+r /usr/share/xsessions/xmonad.desktop
cp $HOME/.xmonad/images/custom_xmonad_badge.png /usr/share/unity-greeter
chmod a+r /usr/share/unity-greeter/custom_xmonad_badge.png
echo "Linking to customized gnome 2 configuration..."
mv ~/.gtkrc-2.0 ~/gtkrc-2.0.original
ln -s .xmonad/.gtkrc-2.0 ~/.gtkrc-2.0

# terminator and gitconfig
cp .config/* $HOME/.config -r
cp .gitconfig $HOME/.gitconfig

# oh-my-zsh and custom aliases
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp $HOME/.zshrc $HOME/.zshrc.origin
cp .zshrc $HOME/.zshrc
cp aliases.zsh $HOME/.oh-my-zsh/custom/
cp ssh-aliases.zsh $HOME/.oh-my-zsh/custom/

# cryptonote nodejs libs dependencies

# libssl required for the node-multi-hashing module
# Boost is required for the cryptonote-util module

apt-get install libssl-dev libboost-all-dev
apt-get autoremove
apt-get autoclean
