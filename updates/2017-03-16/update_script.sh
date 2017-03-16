#!/bin/bash

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`


zenity --question --text "Do you want to install jmeter 3.1?"
ret=$?

if [ $ret -eq 0 ] ;  then
	#jmeter
	rm apache-jmeter-3.1.tgz*
	wget http://apache.rediris.es/jmeter/binaries/apache-jmeter-3.1.tgz
	sudo tar xf apache-jmeter-3.1.tgz -C /opt/
	if [ $? -eq 0 ] ; then
		rm apache-jmeter-3.1.tgz
		
		sudo apt-get -y remove jmeter jmeter-http

		cp $SCRIPTPATH/jmeter.desktop /home/vagrant/.config/apps
		cp $SCRIPTPATH/jmeter.desktop /home/vagrant//.local/share/applications

		#gnome settings
		gsettings set com.canonical.Unity.Launcher favorites "['application://ubiquity.desktop', 'application://org.gnome.Nautilus.desktop', 'application://firefox.desktop', 'application://chromium-browser.desktop', 'application://jetbrains-idea-ce.desktop', 'application://eclipse.desktop', 'application://syntevo-smartgit.desktop', 'application://gnome-terminal.desktop', 'application://selenium-start.desktop','application://sqldeveloper.desktop', 'application://jmeter.desktop', 'application://unity-control-center.desktop', 'unity://running-apps', 'unity://expo-icon', 'unity://devices']" 
	else
		ret=1
	fi

fi

exit $ret


