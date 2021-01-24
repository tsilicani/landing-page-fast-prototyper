echo "Enter the git commit message."
read message
git add .
git commit -m"${message}"
if [ -n "$(git status - porcelain)" ];
then
 echo "Nothing to commit."
else
 git status
 echo "Pushing..."
 git push -u origin master
fi