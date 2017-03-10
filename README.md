# Vagrant automated VM for QA Automation development

This repo documents how was created the image fransimo/ubuntu-16.04-desktop-development

To use the already done image you only need to do:
  -  *vagrant init fransimo/ubuntu-16.04-desktop-development*
  -  replace config.vm.provider in your Vagranfile section by
```
    config.vm.provider "virtualbox" do |vb|
       # Display the VirtualBox GUI when booting the machine
       vb.gui = true
       # Customize the amount of memory on the VM:
       vb.memory = "4096"
       # CPUs
       vb.cpus = 4
       # Clipboard
       vb.customize ['modifyvm', :id, '--clipboard', 'bidirectional'] 
    end
```
  -  *vagrant up --provider virtualbox*
  -  default keyboard layout is Spanish to change it edit ~/autostart.sh en change *setxkbmap es* to *setxkbmap en*

This image is an Ubuntu Desktop 16.04 LTS plus:
  -  Oracle Java 8
  -  maven,  ant  
  -  git, git-flow, smartGit, subversion 
  -  eclipse, eclipse-egit, eclipse-maven, eclipse-testng
  -  IntelliJ
  -  testng 
  -  selenium stand alone server with geckco driver
  -  firefox, chromium, chromium-chromedriver
  -  jmeter
  -  groovy
  -  es and en languajes packs
  -  autoupdate system 

Context:
  -  Base image is *vagrant init bento/ubuntu-16.04*
  -  Image is optimized for Virtual Box, but not restricted to
  -  Make sure ssh and VBox are in path
  -  Default configuration for VM es 4G RAM, 4 core, bidireccional clipboard, active GUI

If you want to generate a new image based on this one:
  -  clone this repo
  -  vagrant plugin install vagrant-reload
  -  vagrant up
  -  to add SQL Developer (need an Oracle account)
    - go to http://www.oracle.com/technetwork/developer-tools/sql-developer/downloads/index.html
	- download Other Platforms .zip
	- sudo unzip Downloads/sqldeveloper-*-no-jre.zip -d /opt/
	- sudo chmod a+x /opt/sqldeveloper/sqldeveloper.sh
	- close session and logon
  -  vagrant package

## Release notes 
### 1.3
 - added gecko driver for selenium
 - auto update system from github to populate changes to provisioned machines 
