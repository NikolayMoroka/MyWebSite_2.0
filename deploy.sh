#!/usr/bin/env sh

# set -e

npm run build

cd dist

# git init 
git add .
git commit -m "New Deployment"
# git push -u origin gh-pages
git push -f https://github.com/NikolayMoroka/MyWebSite_2.0.git master:gh-pages

cd -
