#!/bin/bash

for file in $(find ./); do
    $file | grep ".git"
    
    if ! $file | grep ".git" && ! [ -d $file ]; then #If grep didn't find a .git in the file name and not a dir
        git add "$file"
        echo "$file"
    fi
done
