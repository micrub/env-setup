#!/bin/bash -x
#
Q="-q2"
sudo apt-add-repository ppa:webupd8team/java -y
sudo apt-get update $Q
sudo apt-get install oracle-java8-installer $Q
java -version
curl -O https://download.clojure.org/install/linux-install-1.9.0.297.sh
chmod +x linux-install-1.9.0.297.sh
sudo ./linux-install-1.9.0.297.sh
rm linux-install-1.9.0.297.sh
mkdir ~/bin -p
cd ~/bin
wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod +x ~/bin/lein
source ~/.zshrc
lein -v
