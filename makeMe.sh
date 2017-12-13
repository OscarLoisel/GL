#!/bin/bash

# default package manager

# test if it's a mac
if [[ $(uname -a | grep Mac) ]]; then
  # test if brew exist
  brew=$(which brew)
  echo "You have a mac you rich person";
  package_manager="brew"
  # install brew
  if [[ -z $brew ]]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi

  brew install git
  brew install npm

else
  sudo apt-get install git
  sudo apt-get install npm
fi




sudo npm install -g karma
sudo npm install -g karma-mocha
sudo npm install -g karma-chai
sudo npm install -g mocha
sudo npm install -g chai
