#!/bin/zsh
cd ~/Developer/confere-ai-rails
echo -ne "\033]0;SERVER\007"
echo -e "\033]6;1;bg;red;brightness;270\a"
echo -e "\033]6;1;bg;green;brightness;60\a"
echo -e "\033]6;1;bg;blue;brightness;83\a"
ttab -G bundle exec guard
echo "test"
