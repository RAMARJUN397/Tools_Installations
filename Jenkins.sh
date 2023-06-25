#!/bin/bash

echo "Jenkins Process Start"
sudo apt-get update -y
sudo apt install openjdk-11-jdk -y
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list' 
sudo gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv 5BA31D57EF5975CA
sudo gpg --export --armor 5BA31D57EF5975CA | sudo apt-key add -
sudo apt-get update -y
sudo apt-get install jenkins -y
sudo systemctl start jenkins
sudo ufw allow 8080
sudo ufw allow OpenSSH
sudo ufw enable 
echo "Successfully Installed Jenkins in Your OS"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
