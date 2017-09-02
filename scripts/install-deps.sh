#!/bin/sh

set -v

case "$TRAVIS_OS_NAME" in
  linux)
    echo "START LINUX"
    # install OSC dependancy
    sudo apt-get -y install liblo7
    echo "END LINUX"
  ;;
  osx)
    echo "START OSX"
    # install OSC dependancy
    brew install liblo
    echo "END OSX"
  ;;
esac

sudo pip3 install Cython
sudo pip3 install pyliblo
sudo pip3 install pyinstaller
