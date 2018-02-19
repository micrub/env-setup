#!/bin/bash -x
HOME="/home/micr"
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
