# Vagrant automated VM for QA Automation development

This image is an Ubuntu Desktop 16.04 LTS plus:
  -  Oracle Java 8
  -  maven,  ant  
  -  git, subversion 
  -  eclipse, eclipse-egit, eclipse-maven, eclipse-testng
  -  IntelliJ
  -  testng 
  -  firefox, chromium, chromium-chromedriver
  -  groovy

Base image is: 
  *vagrant init bento/ubuntu-16.04*

Pre:
  -  Image is optimized for Virtual Box, but not restricted to
  -  Make sure ssh and VBox are in path

HOW TO:
  -  vagrant plugin install vagrant-reload
  -  vagrant up
