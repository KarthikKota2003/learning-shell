#!/bin/bash

#Here we are trying to install nginx and mysql packages through shell scripting

user_id=$(id -u)

if (($user_id != 0)); then
echo "User is not root user, try with user having sudo access"
exit 1
else
echo "User is root user, proceeding to download packages..."
fi

# Placing dummy packages names here to check non-exiting nature of shell script

echo "Proceeding to download nginx"

dnf install nginxx -y
