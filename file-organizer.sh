#!/bin/bash

##
## PERSONAL ROJECT, 2026
## linux-file-organizer
## File description:
## first Linux/Bash project in my DevOps learning journey
## useful automation tool: organizing files in a folder by extension.
##

echo -e "Welcome to the linux-file-organizer project !\n"
echo -e "Enter the absolute/relative path of the directory to be ordered :\n"
read directory_name
echo -e "\n"
echo -e "You entered '$directory_name' as directory to be ordered.\n"
if [ -d "$directory_name" ]; then
    if [[ ${directory_name:${#str}-1} = "/" ]]; then
        echo -e "Its contains these files :\n" 
        for file in "$directory_name"*
        do
            echo "${file}"
        done
        echo -e "\n"
        echo -e "Starting reordering your folder ...\n"
        mkdir -p ${directory_name}/images
        mkdir -p ${directory_name}/documents
        mkdir -p ${directory_name}/scripts
        echo -e "Created the three subdirectories 'images', 'documents' and 'scripts' !\n"
        for file in "$directory_name"*
        do
            case "$file" in
                *.jpg | *.jpeg | *.png | *.svg)
                    mv "$file" ${directory_name}/images
                    echo -e "Moved ${file} in ${directory_name}images\n"
                    ;;
                *.txt | *.md | *.pdf | *.doc | *.docx | *.odt)
                    mv "$file" ${directory_name}/documents
                    echo -e "Moved ${file} in ${directory_name}documents\n"
                    ;;
                *.sh)
                    mv "$file" ${directory_name}/scripts
                    echo -e "Moved ${file} in ${directory_name}scripts\n"
                    ;;
            esac
        done
        echo "Folder '${directory_name}' reordered !"
    else
        echo -e "Its contains these files :\n" 
        for file in "$directory_name"/*
        do
            echo "${file}"
        done
        echo -e "\n"
        echo -e "Starting reordering your folder ...\n"
        mkdir -p ${directory_name}/images
        mkdir -p ${directory_name}/documents
        mkdir -p ${directory_name}/scripts
        echo -e "Created the three subdirectories 'images', 'documents' and 'scripts' !\n"
        for file in "$directory_name"/*
        do
            case "$file" in
                *.jpg | *.jpeg | *.png | *.svg)
                    mv "$file" ${directory_name}/images
                    echo -e "Moved ${file} in ${directory_name}/images\n"
                    ;;
                *.txt | *.md | *.pdf | *.doc | *.docx | *.odt)
                    mv "$file" ${directory_name}/documents
                    echo -e "Moved ${file} in ${directory_name}/documents\n"
                    ;;
                *.sh)
                    mv "$file" ${directory_name}/scripts
                    echo -e "Moved ${file} in ${directory_name}/scripts\n"
                    ;;
            esac
        done
        echo "Folder '${directory_name}' reordered !"
    fi
else
    echo "Directory '${directory_name}' not found."
fi
