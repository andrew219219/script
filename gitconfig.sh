#!/bin/bash

#make sure git exists
git > /dev/null
if [ "$?" -eq "127" ];then #git not exists
    echo 'git not exist'
    exit 0
fi

git config --global diff.tool vimdiff
git config --global alias.st status
git config --global alias.ci commit
git config --global alias.co checkout
git config --global push.default matching

