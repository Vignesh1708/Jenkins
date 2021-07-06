#!/bin/bash
# create user
sudo useradd -m -s /bin/bash -d /home/ansible ansible
#set the password for ansible user
#echo "ansible" | sudo passwd ansible --stdin
echo "ansible:password" | sudo chpasswd

#adding user into Sudoer
sudo echo "ansible ALL=(ALL) NOPASSWD:ALL"  > /etc/sudoers.d/sudoer-user

#enable Password auth
sudo sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config

# install sshpass 
sudo apt update && \
sudo apt -y install sshpass

# restart sshd-service

sudo systemctl restart sshd.service

