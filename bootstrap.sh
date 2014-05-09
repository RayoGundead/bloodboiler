#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y software-properties-common python-software-properties

sudo add-apt-repository -y ppa:chris-lea/node.js
sudo apt-get update

sudo apt-get install -y git nodejs

wget https://storage.googleapis.com/golang/go1.2.2.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.2.2.linux-amd64.tar.gz
rm -v go1.2.2.linux-amd64.tar.gz
(cat << EOF
  
# set PATH so it includes GoLang bin if it exists
if [ -d "/usr/local/go/bin" ] ; then
    GOPATH=/home/vagrant/workspace
    PATH="\$PATH:/usr/local/go/bin:$GOPATH/bin"
fi
EOF
) >> /home/vagrant/.profile

mkdir /home/vagrant/workspace/pkg

export PATH=$PATH:/usr/local/go/bin
