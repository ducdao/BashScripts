# Script that executes the initial steps for moving the directory (first
# argument) to Github.
# Usage: ./toGithubInitial.sh [directory] [remote URL] [commit message]

#!/bin/bash

DIRECTORY="$1"
REMOTE_URL="$2"
MESSAGE="$3"

cd $DIRECTORY

printf "=======================\n"
printf "CREATING NEW REPOSITORY\n"
printf "=======================\n\n"
git init

printf "===============\n"
printf "ADDING TO INDEX\n"
printf "===============\n\n"
git add .

printf "=================\n"
printf "COMMITING CHANGES\n"
printf "=================\n\n"
git commit -m "$MESSAGE"

printf "=============\n"
printf "ADDING ORIGIN\n"
printf "=============\n\n"
git remote add origin $REMOTE_URL 

printf "===============\n"
printf "PUSHING CHANGES\n"
printf "===============\n\n"
git push -u origin master -f
