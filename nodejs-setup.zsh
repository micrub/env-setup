#!/bin/zsh
#
source ~/.zshrc

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | zsh
nvm install v8.9.4  # lts/carbon
nvm install v6.13.0 # lts/boron
nvm alias default 6.13.0

node -v
npm -v

# yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update -q2
sudo apt-get install yarn -q2
yarn -v
yarn global add grunt bower node-gyp forever pm2 babel-cli loopback-cli prettier tldr
