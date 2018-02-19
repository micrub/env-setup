#!/bin/bash -x
if [ -z ${HOME+x} ];
then echo "HOME is unset";
        exit 0
else
        echo " $HOME is set to '$HOME'";
        ./git-config-setup.sh
        ./basic-apt-install.sh
        ./vim-setup.sh
fi
