# PyQt5 Continious Integration
Repository to test Continuous Integration for a pyqt5 project 

[![Build Status](https://travis-ci.org/reno-/pyqt5-CI.svg?branch=master)](https://travis-ci.org/reno-/pyqt5-CI)

I write these few lines after fighting against settings in .travis.yml file and different repo for little apps.
Continious Integration helps me running tests and deploy for both Ubuntu and OSX platform for each release (done with a git tag)

This repository hosts a pyqt5 command line app. It prints 5 times a message and quit.

The travis needs are split in 2 files, the .travis.yml and the scripts/build.sh. I split it in 2 files to be able to build the app locally on my computer without travis.

python 3.4 / pyqt 5

Don't forget to set SECURE_KEY variable in your Travis repo.
sudo gem install travis
cd /to/your/repo
travis setup releases
