#!/bin/bash

team_name=$1
alert_type=$2
subject=$3
recipient=$4
server_ip=$5
message=$6

body="Hi ${1}, \nWe have $alert_type alert for $server_ip. Please have a look:\n${message}\nThanks,\nMonitoring Team"

{
echo "To: $recipient"
echo "Subject: $subject"
echo "Content-Type: text/html"
echo ""
echo "$body"
} | msmtp "$recipient"
