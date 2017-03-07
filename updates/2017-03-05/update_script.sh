#!/bin/bash

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

wget https://github.com/mozilla/geckodriver/releases/download/v0.14.0/geckodriver-v0.14.0-linux64.tar.gz
tar -xvf geckodriver-v0.14.0-linux64.tar.gz
sudo mv geckodriver /opt/selenium
rm geckodriver-v0.14.0-linux64.tar.gz

cp $SCRIPTPATH/selenium.sh ~/selenium.sh


