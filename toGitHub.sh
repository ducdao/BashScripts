# Script that backs up files by performing steps for moving files to GitHub.
# To run, type:
# ./toGitHub.sh [files you want to send to GitHub] [your message]

#!/bin/bash

FILES="$1"
MESSAGE="$2"

printf "===============\n"
printf "ADDING TO INDEX\n"
printf "===============\n\n"
git add $FILES

printf "=================\n"
printf "COMMITING CHANGES\n"
printf "=================\n\n"
git commit -m "$MESSAGE"

printf "===============\n"
printf "PUSHING CHANGES\n"
printf "===============\n\n"
git push -u origin master -f
