#!/bin/bash
FOLDER=$1
FROMBRANCH=$2
TOBRANCH=$3

# configure your fetch by adding this to your configuration before the fetch command
cd $FOLDER
git config remote.origin.fetch "+refs/heads/*:refs/remotes/origin/*"
# You can check what exists via
git show-ref
git remote update
git fetch --all
git checkout $TOBRANCH
ls -la
git merge --no-ff --no-edit $FROMBRANCH
LASTSTATUS=$?
echo "last status of git merge was $LASTSTATUS"
if [ $LASTSTATUS -ne 0 ]; then
    echo "The merge failed."
    exit 1  
fi
git push
git push --tags
