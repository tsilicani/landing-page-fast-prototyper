#!/bin/bash
_default_message="Work in progress."
read -p "Enter the git commit message: [default=\"$_default_message\"] " _message
: ${_message:=$_default_message}
echo "The git commit message will be: \"$_message\""

git add .
git commit -m"${_message}"

if git diff-index --quiet HEAD --; then
    echo "Changes detected."
    git push
else
    echo "No Changes detected: nothing to push."
fi


# echo "Enter the git commit message."
# read message
# git add .
# git commit -m"${message}"
# echo $message
# echo "Committed."
# if [ -n "$(git status - porcelain)" ];
# then
#  echo "It is Clean."
# else
#  git status
#  echo "Pushing..."
#  
# fi