#!/bin/bash

sudo apt-get update
sudo apt-get upgrade

echo -e "\n\n"
echo "====================================="
echo "| This script will help you install |"
echo "| wireshark via ppa                 |"
echo "====================================="

read -p "Install wireshark ? (yes/no) : " choice

if [ "${choice}" == "Y" ] || [ "${choice}" == "y" ] || [ "${choice}" == "yes" ] || [ "${choice}" == "Yes" ]; then
  sudo add-apt-repository ppa:wireshark-dev/stable
  sudo apt-get update
  sudo apt-get install wireshark -y
  exit 0
else
  exit 0
fi
