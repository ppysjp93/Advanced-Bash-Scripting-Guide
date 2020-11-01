#!/bin/bash

# Creates a "Playground" of arbitrary file tree with directories and files

# We need to upgrade this so that if the playground directory
# already exists in the current directory it is deleted and
# replaced by the newest playground.
# Reason 1) For automation sake
# Reason 2) We can continuosly make the playground more complex
# and then just run the playground command and be good to go!

cd "$PWD"
mkdir playground
cd playground
mkdir dir1 dir2
touch random{1..10}.txt
touch .randomDot{1..10}.dotfile
