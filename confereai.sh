#!/bin/zsh

# For this script to work, you need to setup the title and color functions
# on your .zshrc file
# You also need to install npm install -g newtab
source ~/.zshrc

# RAILS SERVER Tab Setup
cd ~/Developer/confere-ai-rails
title DEVELOPMENT
color development
/bin/rails s

# BUNDLE GUARD Tab Setup
ttab -G eval "title TESTS;color tests; bundle exec guard"

# POSTGRES Tab Setup
ttab -G eval "title DATABASE;color database; psql"

# HEROKU Tab Setup
ttab -G eval "title PRODUCTION;color production; heroku logs --tail"

# GIT Tab Setup
ttab -G eval "title VERSIONING;color versioning; git status"
