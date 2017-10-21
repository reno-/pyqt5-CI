#!/bin/sh

set -v

case "$TRAVIS_OS_NAME" in
  linux)
    echo "START LINUX"
    # install OSC dependancy
    echo "END LINUX"
  ;;
  osx)
    echo "START OSX"
    # install OSC dependancy
    echo "END OSX"
  ;;
esac

sudo pip3 install Cython
sudo pip3 install pyinstaller
sudo pip3 install PyQt5

