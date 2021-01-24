#!/bin/bash
_default_message="Work in progress"
read -p "Enter the git commit message: [default=\"$_default_message\"] " _message
: ${_message:=$_default_message}
echo "The git commit message will be: \"$_message\""

git add .
git commit -m"${_message}"
git push

# if git diff-index --quiet HEAD --; then
#     echo "Changes detected."
    
# else
#     echo "No Changes detected: nothing to push."
# fi

echo "Push done."