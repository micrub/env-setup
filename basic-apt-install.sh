#!/bin/bash -x
USER="/home/micr"

sudo apt-get update
sudo apt-get install git git-flow zsh vim keepassx keepass2 silversearcher-ag
sudo apt-get autoremove
sudo apt-get autoclean
