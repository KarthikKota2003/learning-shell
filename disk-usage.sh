#!/bin/bash

usage_threshold=20
server_ip=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4)

usage=$(df -hT | grep -v Filesystem)

while IFS= read -r line
do
    usage_percentage=$(echo $line | awk '{print $6}' | cut -d '%' -f1)
    partition=$(echo $line | awk '{print $7}')
    if (( $usage_percentage > $usage_threshold ));then
        message+="WARNING:: High Disk usage on $partition : ${usage_percentage}%<br>"
    fi
done <<< $usage

sh mail.sh "DevOps Team" "Disk Usage" "Alert :: High Disk Usage" "shanmukhakota03@gmail.com" "$server_ip" "$message"

