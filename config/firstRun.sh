#!/bin/bash

echo First run configuration

#Eclipse plugins
eclipse -nosplash -application org.eclipse.equinox.p2.director -repository http://download.eclipse.org/releases/indigo/ -installIU org.eclipse.m2e.core,org.eclipse.m2e.editor,org.eclipse.m2e.jdt,org.eclipse.m2e.launching
eclipse -nosplash -application org.eclipse.equinox.p2.director -repository http://beust.com/eclipse -installIU org.testng.eclipse
	
#gnome settings
gsettings set com.canonical.Unity.Launcher favorites "['application://ubiquity.desktop', 'application://org.gnome.Nautilus.desktop', 'application://firefox.desktop', 'application://chromium-browser.desktop', 'application://jetbrains-idea-ce.desktop', 'application://eclipse.desktop','application://gnome-terminal.desktop', 'application://selenium-start.desktop','application://sqldeveloper.desktop', 'application://unity-control-center.desktop', 'unity://running-apps', 'unity://expo-icon', 'unity://devices']" 
	
#InelliJ launch
/opt/idea-IC-163.11103.6/bin/idea.sh &

firefox https://github.com/fransimo/vagrant-qa-automation-development-environment/blob/master/README.md &

