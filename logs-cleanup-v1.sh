#!/bin/bash

source_dir=$1
days=${2:-14} #if no. of days are not passed by script, we will take 14 days 

usage(){
    echo "sh $0 [SOURCE DIRECTORY] [NO.OF DAYS]"
    exit 1
}

#Checking if source dir is empty 
if [ -z $source_dir ];then
    echo "ERROR:: Source directory cannot be empty"
    usage
fi

#Checking if the source dir exists or not
if [ ! -d $source_dir ];then
    echo "Source directory $source_dir does not exist"
    exit 0
fi 

files_to_delete=$(find $source_dir -name "*.log" -type f -mtime +$days)

if [ -z "$files_to_delete" ];then
    echo "No files to delete"
    exit 0
fi

while IFS= read -r line
do 
    echo "We are going to delete this file:$line"
    rm -f $source_dir/$line
    echo "Successfully deleted: $line"
done <<< $files_to_delete
