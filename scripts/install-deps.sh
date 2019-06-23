#! /bin/bash -e
sudo apt-get update
sudo add-apt-repository ppa:lyzardking/ubuntu-make
sudo apt-get update
sudo apt-get install ubuntu-make
umake ide arduino

sudo apt-get install -y \
  arduino-mk \
  python-serial \
  python3-serial
