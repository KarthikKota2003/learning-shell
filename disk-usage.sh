#!/bin/bash

usage_threshold=20

usage=$(df -hT | grep -v Filesystem)

while IFS= read -r line
do
    usage_percentage=$(echo $line | awk '{print $6}' | cut -d '%' -f1)
    partition=$(echo $line | awk '{print $7}')
    if (( $usage_percentage > $usage_threshold ));then
        message+="WARNING:: High Disk usage on $partition : ${usage_percentage}%"
    fi

done <<< $usage

 echo $message