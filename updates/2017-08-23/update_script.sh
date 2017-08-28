#!/bin/bash

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`


wget https://github.com/mozilla/geckodriver/releases/download/v0.18.0/geckodriver-v0.18.0-linux64.tar.gz -O /tmp/geckodriver-v0.18.0-linux64.tar.gz
tar xf /tmp/geckodriver-v0.18.0-linux64.tar.gz -C /tmp
sudo mv /opt/selenium/geckodriver /opt/selenium/geckodriver-14
sudo mv /tmp/geckodriver /opt/selenium/geckodriver
rm /tmp/geckodriver-v0.18.0-linux64.tar.gz