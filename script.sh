#!/bin/bash

##
## EPITECH PROJECT, 2026
## linux-file-organizer
## File description:
## script
##

echo "Enter the absolute/relative path of the directory to be ordered : "
read directory_name
echo "You entered '$directory_name' as directory to be ordered."
if [ -d "$directory_name" ]; then
    echo "Starting reordering your folder ..."
    if [[ ${directory_name:${#str}-1} = "/" ]]; then
        mkdir -p ${directory_name}/images
        mkdir -p ${directory_name}/documents
        mkdir -p ${directory_name}/scripts
        for file in "$directory_name"*
        do
            case "$file" in
                *.jpg | *.jpeg | *.png | *.svg)
                    mv "$file" ${directory_name}/images
                    ;;
                *.txt | *.md | *.pdf | *.doc | *.docx | *.odt)
                    mv "$file" ${directory_name}/documents
                    ;;
                *.sh)
                    mv "$file" ${directory_name}/scripts
                    ;;
            esac
        done
        echo "Folder ${directory_name} reordered !"
    else
        mkdir -p ${directory_name}/images
        mkdir -p ${directory_name}/documents
        mkdir -p ${directory_name}/scripts
        for file in "$directory_name"/*
        do
            case "$file" in
                *.jpg | *.jpeg | *.png | *.svg)
                    mv "$file" ${directory_name}/images
                    ;;
                *.txt | *.md | *.pdf | *.doc | *.docx | *.odt)
                    mv "$file" ${directory_name}/documents
                    ;;
                *.sh)
                    mv "$file" ${directory_name}/scripts
                    ;;
            esac
        done
        echo "Folder ${directory_name} reordered !"
    fi
else
    echo "'$directory_name' not found."
fi
