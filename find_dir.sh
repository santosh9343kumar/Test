#!/bin/bash

echo "Enter the directory name:"
read dir_name


found_dir=$(find / -type d -name "$dir_name" 2>/dev/null)
#if [ -d / "$dir_name" ]; then
if [ -n "$found_dir" ]; then
        echo "Directory '$dir_name' exists the fallowing location"
        echo "$found_dir"

else

        mkdir "$dir_name"
        echo "Directory created: $dir_name"

fi
