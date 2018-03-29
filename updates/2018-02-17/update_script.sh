#!/bin/bash
# Install pip and Selenium
# autostart.sh add gecko driver to path

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

sudo apt-get update

sudo apt-get install firefox
sudo apt-get -y install python3-pip ipython3
pip3 install selenium

#test install
PATH=$PATH:/opt/selenium
python3 $SCRIPTPATH/selenium_test.py


