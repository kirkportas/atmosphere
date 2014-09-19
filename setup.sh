#!/bin/bash

# Setup Kirk's environment. See README.rst.

# Related:
# .ssh

# Dependencies:
# gcc (or xcode) - https://github.com/kennethreitz/osx-gcc-installer#readme
# Xcode / Graphic Tools / Origami
# CLT - command line tools - https://developer.apple.com/downloads/index.action#
# Heroku, Git, Foreman - https://toolbelt.herokuapp.com/


# go home
cd ~/

# symlink sublime ?

# pip
sudo easy_install pip
pip install --upgrade pip

# homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew doctor

# ack
brew install ack

# node & npm
brew install node

# mobile shell / replacement for ssh
brew install mobile-shell

# openssl
brew install openssl

###############################################################################
# CODING ENVIRONMENT
###############################################################################

# install sublime2
sudo add-apt-repository ppa:webupd8team/sublime-text-2
sudo apt-get update

# install some sublime plugins

# ctags (http://ctags.sourceforge.net)
# CONFIG .ctags
## brew install ctags
## https://github.com/SublimeText/CTags
# On package creation: ctags -R .

###############################################################################
# GIT
###############################################################################

# git git-flow
# brew install git-flow

# git completion
brew install git bash-completion
# install .git-flow-completion.sh

###############################################################################
# PYTHON
###############################################################################

# good python
brew install python --framework --universal

# virtualenv
sudo pip install virtualenv
# virtualenv venv --distribute
# pip install -r requirements.txt

# process management
# sudo pip install honcho
# any other plugin dependencies?
# git hooks for checking in with python?

# flake8
# sudo pip install flake8

# docutils
# sudo pip install sphinx

###############################################################################
# JAVASCRIPT
###############################################################################

# bower
npm install -g bower

# jshint
# CONFIG .jshintrc
npm install jshint -g

# node extensions / modules
sudo pip install nodeenv
npm install nodemon -g

# grunt-init: http://gruntjs.com/project-scaffolding
npm install grunt-cli -g
npm install grunt-init -g
# To create new rendr projects: grunt-init rendr
# https://github.com/andrewrjones/grunt-init-rendr

# for automagically generating a requirejs config file from bower
# npm install -g --save bower-requirejs
# bower-requirejs -c path/to/config.js

###############################################################################
# HTML/CSS/LESS
###############################################################################

# less
npm install less -g

###############################################################################
# DATABASES
###############################################################################

# PostGres
brew install postgresql
initdb /usr/local/var/postgres -E utf8
gem install lunchy   # https://github.com/eddiezane/lunchy
# mkdir -p ~/Library/LaunchAgents
# cp /usr/local/Cellar/postgresql/VERSION_NUMBER/homebrew.mxcl.postgresql.plist ~/Library/LaunchAgents/
lunchy start postgres
# lunchy stop postgres

# OPTIONAL INSTRUMENTATION: psql postgres -c 'create extension "adminpack";'
# ADD HSTORE EXTENSION: psql -d template1 -c 'create extension hstore;'