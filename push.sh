#!/bin/bash

_default_message="Work in progress"
read -p "enter the git commit message: [default=\"$_default_message\"] " _message
: ${_message:=$_default_message}
echo "the git commit message will be: \"$_message\""

git add .
git commit -m"${_message}"
git push

echo -e "\n\x1B[32mpushed successfully\x1B[0m"                         