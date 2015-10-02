#!/bin/bash

#echo # first-run >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/mordini/first-run.git
git push -u origin master
