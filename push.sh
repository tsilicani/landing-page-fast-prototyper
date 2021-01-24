#!/bin/bash
_default_message="Work in progress"
read -p "enter the git commit message: [default=\"$_default_message\"] " _message
: ${_message:=$_default_message}
echo "the git commit message will be: \"$_message\""

git add .
git commit -m"${_message}"
git push

echo \
'


 _____           _              _   _ 
|  __ \         | |            | | | |
| |__) |   _ ___| |__   ___  __| | | |
|  ___/ | | / __| '_ \ / _ \/ _` | | |
| |   | |_| \__ \ | | |  __/ (_| | |_|
|_|    \__,_|___/_| |_|\___|\__,_| (_)
                                      
                                      



'                               