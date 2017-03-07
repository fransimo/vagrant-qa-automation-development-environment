#!/bin/bash

#wget https://github.com/mozilla/geckodriver/releases/download/v0.14.0/geckodriver-v0.14.0-linux64.tar.gz
#tar -xvf geckodriver-v0.14.0-linux64.tar.gz
#sudo mv geckodriver /opt/selenium

java -Dwebdriver.gecko.driver=/opt/selenium/geckodriver -jar /opt/selenium/selenium-server-standalone-3.0.1.jar -role standalone -log ~/selenium.log
