#!/bin/bash

#this script will allow users to create their own git repository
#and push their personal configurations without a hassle.
#currently is a placeholder.

#echo # first-run >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/mordini/first-run.git
git push -u origin master
