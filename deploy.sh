#!/bin/sh

#
# Usage:
#
# bash ./deploy.sh [MESSAGE] [VERSION]
#

if [[ -z $1 ]]; then
    echo "Please enter a commit message"
    read MESSAGE
else
    MESSAGE=$1
fi

if [[ -z $2 ]]; then
    echo "Please enter semantic version"
    read VERSION
else
    VERSION=$2
fi

npm pkg set version="$VERSION"
# Update the version string on line 3 of stemcbook.asc
sed -i '3s/.*/v'$VERSION', {docdate}: Draft/' stemcbook.asc

npm install
npm update
npm run build
git status
git add --all
git commit -m "'$MESSAGE'"
git push origin main
