#!/bin/bash

sudo apt-get update
sudo apt-get upgrade

echo "========================================"
echo "| This script will help you to install |"
echo "| some useful tools. It contains :     |"
echo "| ------------------------------------ |"
echo "| curl | git | aptitude | Atom | Java8 |"
echo "| net-tools | udpcast |                |"
echo "| chrome | Vim | htop | Shutter |      |"
echo "========================================"

read -p "Install all pkgs above ? (yes/no) : " choice

if [ "${choice}" == "Y" ] || [ "${choice}" == "y" ] || [ "${choice}" == "yes" ] || [ "${choice}" == "Yes" ]; then
  echo "Now going on......"
  echo "########################################"
  echo "###### Install curl git aptitude #######"
  echo "########################################"
  sudo apt-get install curl git aptitude -y

  echo "########################################"
  echo "############ Install Atom ##############"
  echo "########################################"
  sudo add-apt-repository ppa:webupd8team/atom -y
  sudo apt-get update
  sudo apt-get install atom -y

  echo "########################################"
  echo "############ Install Java8 #############"
  echo "########################################"
  sudo add-apt-repository ppa:webupd8team/java
  sudo apt-get update
  sudo apt-get install oracle-java8-installer

  echo "########################################"
  echo "############ Install Chrome ############"
  echo "########################################"
  curl -O -L https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  sudo dpkg -i google-chrome-stable_current_amd64.deb
  sudo apt-get -f install -y
  sudo rm google-chrome-stable_current_amd64.deb


  echo "########################################"
  echo "####### Install Vim htop shutter #######"
  echo "########################################"
  sudo apt-get install vim htop shutter -y

  echo "########################################"
  echo "####### Install net-tools udpcast ######"
  echo "########################################"
  sudo apt-get install net-tools udp-cast -y

  exit 0
else
  echo "If you don't want to install all of them, modify it !"
  exit 0
fi
