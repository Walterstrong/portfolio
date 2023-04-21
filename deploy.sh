#!/bin/bash

# PRODUCTION
git checkout master
git reset --hard
git pull origin master

npm i yarn -g
yarn global add serve
serve -s build -l 3001

yarn 
yarn run build
pm2 start "yarn run start:prod" --name=PORTFOLIO

# DEVELOPMENT
# npm i yarn -g
# yarn 
# pm2 start "yarn run start" --name=YOURSHOES-REACT
