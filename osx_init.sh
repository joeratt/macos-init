#!/bin/bash


if [ "root" != "$USER" ]; then
  su -c "$0" root
  echo "Please run as sudo"
  exit
fi

# Go to the Downloads folder
cd ~/Downloads

# Download iTerm2
curl -O https://iterm2.com/downloads/stable/iTerm2-3_0_15.zip
unzip iTerm2-3_0_15.zip
open iTerm.app #Copy to the Applications folder
rm iTerm.app
rm iTerm2-3_0_15.zip #Remove
open -a iTerm
