#!/bin/bash

setxkbmap es

if [ $DISPLAY == ":0" ] ; then
	#run only in X session
	vibase=$HOME/vagrant-image-update
	
	#check update structure
	if [ ! -d "$vibase" ] ; then
		mkdir "$vibase"
	fi
	
	#download updates repos
	if [ ! -d "$vibase/vagrant-qa-automation-development-environment" ] ; then
		cd $vibase
		git clone https://github.com/fransimo/vagrant-qa-automation-development-environment.git
	else
		repo="$vibase/vagrant-qa-automation-development-environment"
		if [ $(stat -c %Y $repo) -lt $(date +%s --date="120 min ago") ] ; then 
			echo update repo, more than 120 mins
			cd $repo
			git pull
			touch $repo
		fi 
	fi
	
	if [ -f "$vibase/vagrant-qa-automation-development-environment/imageupdate.sh" ] ; then
		bash $vibase/vagrant-qa-automation-development-environment/imageupdate.sh
	fi
	
	#download local updates repos
	#if [ ! -d "$vibase/localrepo" ] ; then
	#	cd $vibase
	#	git clone localrepo
	#else
	#	repo="$vibase/localrepo"
	#	if [ $(stat -c %Y $repo) -lt $(date +%s --date="15 min ago") ] ; then 
	#		echo update repo, more than 15 minute
	#		cd $repo
	#		git pull
	#		touch $repo
	#	fi 	fi
	#
	#if [ -f "$vibase/vagrant-qa-hbg/imageupdate.sh" ] ; then
	#	bash $vibase/vagrant-qa-hbg/imageupdate.sh
	#fi
	
fi


#Maven
#no need if installed by apt-get
#export MAVEN_HOME=/opt/apache-maven-3.2.5
#export PATH=${PATH}:/opt/apache-maven-3.2.5/bin;

export MAVEN_OPTS=" -Djava.awt.headless=true "

#ANT
#no need if installed by apt-get
#export ANT_HOME=/opt/ant
#export PATH=${PATH}:/opt/ant/bin:

#sonar
#export PATH=${PATH}:/opt/sonar-runner-2.4/bin:

#Groovy
#no need if installed by apt-get
#export GROOVY_HOME=/opt/groovy
#export PATH=${PATH}:/opt/groovy/bin/:

#mvn archetype:generate -DarchetypeGroupId=ru.stqa.selenium -DarchetypeArtifactId=webdriver-testng-archetype -DarchetypeVersion=3.0 -DgroupId=com.hotelbeds -DartifactId=test

