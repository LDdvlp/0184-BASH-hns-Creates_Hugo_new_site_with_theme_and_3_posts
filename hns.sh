#!/bin/bash

##
# hns.sh
#
# Creates Hugo new site with theme and 3 posts
#
# $1 : folderName or projectName or siteName
# $2 : themeUrl
# $3 : themeName
#
# Usage :
# hns $1 $2 $3

echo "Version d'Hugo :" &&
hugo version &&
hugo new site $1 &&
cd $1 &&
git init &&
git submodule add $2 "themes/"$3 &&
echo theme = \"$3\" >> config.toml $$
hugo new posts/post-01.md &&
hugo new posts/post-02.md &&
hugo new posts/post-03.md &&
# Start the Hugo server with drafts enabled
hugo server -D
