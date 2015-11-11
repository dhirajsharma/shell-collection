#!/bin/bash
# Install Docker latest and add current user to docker group
# you will have to log out and then back in for the group add to take effect.
# Written on Nov. 10, 2015 by Michael Rosata mrosata1984@gmail.com


if [ -n "$(command -v yum)" ];then
  sudo yum update -y
  # Test to see if wget is installed, if not install it.
  command -v wget >/dev/null 2>&1 || { echo >&2 "Installing wget."; sudo yum install wget; }
elif [ -n "$(command -v apt-get)" ];then
  sudo apt-get update -y
# Test to see if wget is installed, if not install it.
command -v wget >/dev/null 2>&1 || { echo >&2 "Installing wget."; sudo apt-get install wget; }
else
  echo "Didn't update your computer because I can't find yum or apt-get. Not going to install Docker"
  exit 1;
fi


if [ -n "$(command -v docker)" ];then
  echo "you have docker installed already, it's not safe to run this script!";
  exit 0;
fi;

# Download and install docker
wget -qO- https://get.docker.com/ | sh
sudo service docker start

if groups $(whoami) | grep &>/dev/null '\bdocker\b'; then
 echo "All set";
 exit 0;
fi

sudo usermod -aG docker $(whoami)
echo "Log out and back in so you will be added to group docker!";
exit 0;
