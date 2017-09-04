#!/bin/bash

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

apt-get update

#ensure non-interactive updates
export DEBIAN_FRONTEND=noninteractive 

#update any package from the base distro
apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade

#java8
add-apt-repository -y ppa:webupd8team/java
apt update
#java8 ensure non-interactive
echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true |  debconf-set-selections
apt install -y oracle-java8-installer

apt-get install -y maven git git-flow git-cola meld subversion eclipse eclipse-egit testng chromium-browser chromium-chromedriver ant groovy docker jmeter jmeter-junit jmeter-java jmeter-http mc joe

#HOME
cd /home/vagrant

#intelliJ
wget --quiet https://download.jetbrains.com/idea/ideaIU-2017.2.3.tar.gz

tar xf ideaIC*.tar.gz -C /opt/
rm ideaIC*.tar.gz

wget --quiet http://selenium-release.storage.googleapis.com/3.0/selenium-server-standalone-3.0.1.jar
mkdir /opt/selenium
mv selenium-server-standalone-3.0.1.jar /opt/selenium

#smartGit
wget --quiet http://www.syntevo.com/static/smart/download/smartgit/smartgit-17_0_1.deb
dpkg -i smartgit-17_0_1.deb

#User configs
#wget to solve cr/lf when host is not the linux
wget --quiet https://github.com/fransimo/vagrant-qa-automation-development-environment/archive/master.zip
unzip master
cp -vr vagrant-qa-automation-development-environment-master/config/* .
cp -vr vagrant-qa-automation-development-environment-master/config/.* .

desktop-file-install vagrant-qa-automation-development-environment-master/config/.gnome/apps/*

mv /home/vagrant/selenium-logo.png /opt/selenium
chmod a+x /home/vagrant/selenium.sh

chown -R vagrant.vagrant /home/vagrant
rm -fR vagrant-qa-automation-development-environment-master

update-desktop-database
