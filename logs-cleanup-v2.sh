#!/bin/bash

source_dir=$1
dest_dir=$2
days=${3:-14}

usage(){
    echo "sh $0 [SOURCE DIRECTORY] [DESTINATION DIRECTORY] [NO.OF DAYS]"
    exit 1
}

if [ -z $source_dir ] || [ -z $dest_dir ];then
    echo "ERROR:: Source or Destination directory is empty"
    usage 
fi  

if [ ! -d $source_dir ] || [ ! -d $dest_dir ];then
    echo "Source or destination does not exist"
    exit 0
fi

files_to_archive=$(find $source_dir -name "*.log" -type f -mtime +$days)

if [ -z "$files_to_archive" ];then
    echo "No files to archive"
    exit 0
fi

while IFS= read -r line
do 
    echo "Going to archive: $line"
done <<< $files_to_archive
