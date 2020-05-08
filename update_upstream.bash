#!/bin/bash

./update.bash

git add .
git commit -m "Update posts $today"
git push

echo "Source Pushed!"

yarn build

cd _site
git checkout master
git pull
git add .
git commit -m "Deploy $today"
git push --force

echo "Master Pushed!"

cd ..
git checkout source
git pull