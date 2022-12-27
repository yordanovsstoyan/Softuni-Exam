#!/bin/bash

#INSTALL AND START 

sudo dnf install java-11-openjdk -y
sudo wget https://pkg.jenkins.io/redhat/jenkins.repo -O /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key 
sudo dnf makecache
sudo dnf install jenkins -y
sudo systemctl start jenkins
sudo systemctl enable jenkins

#FIREWALL

sudo firewall-cmd --permanent --add-port=8080/tcp
sudo firewall-cmd --permanent --add-port=80/tcp
sudo firewall-cmd --reload

