#!/bin/bash -x
# oh-my-zsh and custom aliases
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp $HOME/.zshrc $HOME/.zshrc.origin
cp .zshrc $HOME/.zshrc
cp aliases.zsh $HOME/.oh-my-zsh/custom/
cp ssh-aliases.zsh $HOME/.oh-my-zsh/custom/
echo "oh-my-zsh setup DONE!"
