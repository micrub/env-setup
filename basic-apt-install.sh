#!/bin/bash -x

sudo apt-get update -q2
sudo apt-get install git git-flow zsh vim keepass2 silversearcher-ag autojump htop sysstat pandoc lynx -q2
sudo apt-get autoremove -q2
sudo apt-get autoclean -q2
