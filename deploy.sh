#!/bin/bash

echo -e "Deploying updates to shinyram.github.io..."

# Build the project.
#jekyll build

# Go To Public folder

cd ~/shinyram.github.io

# cp -av /home/chrishebdon/shinyram.github.io/* .


# Add changes to git.
git add -A

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back

