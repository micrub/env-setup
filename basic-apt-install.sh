#!/bin/bash -x
USER="/home/micr"

sudo apt-get update -q2
sudo apt-get install git git-flow zsh vim keepass2 silversearcher-ag autojump -q2
sudo apt-get autoremove -q2
sudo apt-get autoclean -q2
