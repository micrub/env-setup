#!/bin/zsh
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | zsh
source ~/.zshrc
nvm install v8.9.4
node -v
npm -v

# yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn
yarn -v
yarn global add node-gyp forever pm2 babel-cli loopback-cli prettier
