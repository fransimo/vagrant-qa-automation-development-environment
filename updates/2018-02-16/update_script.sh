#!/bin/bash
# Install npm and git-hours as estimating tools from code commits
# check https://github.com/kimmobrunfeldt/git-hours

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

sudo apt-get update

sudo apt-get -y install npm 

#https://stackoverflow.com/questions/21168141/cannot-install-packages-using-node-package-manager-in-ubuntu
sudo apt-get -y install nodejs-legacy

sudo npm install -g git-hours




