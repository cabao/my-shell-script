#!/bin/bash

sudo apt-get update
sudo apt-get upgrade

echo -e "\n\n"
echo "====================================="
echo "| This script will help you install |"
echo "| Tasksel                           |"
echo "====================================="

read -p "Install wireshark ? (yes/no) : " choice

if [ "${choice}" == "Y" ] || [ "${choice}" == "y" ] || [ "${choice}" == "yes" ] || [ "${choice}" == "Yes" ]; then
  sudo apt-get install tasksel -y
  exit 0
else
  exit 0
fi
