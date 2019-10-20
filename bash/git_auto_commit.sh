#! /usr/bin/bash

branch_name=`git symbolic-ref --short -q HEAD`
today=`date`
echo "current branch is $branch_name"
echo "will auto commit by auto commit message for backup"

echo "[auto] Daily backup at $today"


git add *
git commit -m "[auto] Daily backup at $today"
git push origin $branch_name
