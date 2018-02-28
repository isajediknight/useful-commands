#!/bin/bash
#Written by isajediknight

#Record the original branch so we can switch back to it
original_branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')

#If there are modified tracked files which are uncommited the script will crash
#Catching that scenario here
if [[ `git status --porcelain --untracked-files=no` ]]; then
  echo "< Detected Uncommited Changes >"
  echo "Please commit these changes and run this script again"
  echo ""
else
  #We needto be in master branch to cleanup all other branches
  git checkout master
  #Get all the updates to master if there are any
  git pull
  #Loop through all branches and delete their local copies
  for branch in $(git branch --all | grep '^\s*remotes' | egrep --invert-match '(:?HEAD|master)$'); do
    git branch -D "${branch##*/}"
  done
  #Get list of changes
  git fetch origin
  #Delete branches locally which no longer exist in the remote repo
  git remote prune origin
  #Loop through all branches and set their remote origin to be itself in the remote repo
  for branch in $(git branch --all | grep '^\s*remotes' | egrep --invert-match '(:?HEAD|master)$'); do
    git branch --track "${branch##*/}" "$branch"
  done
  #Switch back to original branch
  git checkout $original_branch
fi
