#!/bin/bash

DATE=`date '+%Y-%m-%d %H:%M:%S %z'`

cd ~/minecraft

git add -A
git commit -m "$DATE"
git pull origin main --rebase
git push origin main
