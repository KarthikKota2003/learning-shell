#!/bin/bash

# Bash will automatically handle errors now
set -e 

trap 'echo "Error at $LINENO", command "$BASH_COMMAND"' ERR

echo "Going to install nginx"
dnf install nginxx -y

echo "Proceeding"