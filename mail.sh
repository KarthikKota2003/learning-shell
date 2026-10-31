#!/bin/bash

team_name=$1
alert_type=$2
subject=$3
recipient=$4
server_ip=$5
message=$6

body=$(sed -e "s/TEAM_NAME/$team_name/g" -e "s/ALERT_TYPE/$alert_type/g" -e "s/SERVER_IP/$server_ip/g" -e "s|MESSAGE|$message|g" template.html)

{
echo "To: $recipient"
echo "Subject: $subject"
echo "Content-Type: text/html"
echo ""
echo "$body"
} | msmtp "$recipient"
