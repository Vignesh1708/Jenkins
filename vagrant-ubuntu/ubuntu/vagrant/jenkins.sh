#!/bin/bash
sudo apt-get update

# Install Python3

sudo apt-get -y install python3 \ 
                        python3-pip \
                        software-properties-common \
                        git \
                        maven \
                        

# Install java and jenkins
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt -y install openjdk-8-jdk && \
sudo apt-get -y install jenkins && \
sudo systemctl start jenkins.service
sudo systemctl enable jenkins.service


# Install Ansible
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt-get update
sudo apt -y install ansible

