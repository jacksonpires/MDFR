#!/bin/zsh

# Conditions
# 01. Call the script using . confereai.sh (note the space)
# 02. Define title function on your bash profile (".zshrc")
# 03. Define color function on your bash profile (".zshrc")
# 04. Have the proper software installed (Rails/Guard, Heroku Toolbelt, Postgres up and running, Git)
# 05. Install the newtab npm package globally
source ~/.zshrc

# Set the proper directory for new tabs
cd ~/Developer/confere-ai-rails 

# GUARD Tab Setup for Tests
ttab -G eval "title TESTS;color tests; bundle exec guard"

# POSTGRES Tab Setup as the Database
ttab -G eval "title DATABASE;color database; psql"

# HEROKU Tab Setup as the Production Environment
ttab -G eval "title PRODUCTION;color production; heroku logs --tail"

# GIT Tab Setup as the Versioning System
ttab -G eval "title VERSIONING;color versioning; git status"

# RAILS SERVER Tab Setup as the Development Environment
title DEVELOPMENT
color development
cd ~/Developer/confere-ai-rails; ./bin/rails s
