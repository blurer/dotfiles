#!/bin/bash

# this is for mkdocs to build, git backup, and then push to prod

mkdocs build

# github push
git init
git add .
git commit -m "$(hostname) $(date '+%Y-%m-%d %H:%M:%S')"
git push

# sync to prod
rsync -rh --progress site/* {user}@{domain}:/home/{user}/htdocs/{domain}/
