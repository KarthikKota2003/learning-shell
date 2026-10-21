#!/bin/bash

#These are special variables in shell

echo "The args passed to the script are: $@"
echo "The number of args passed are: $#"

echo "Second arg passed to script is: $2"

echo "The name of this script is: $0"
echo "The Absolute path for this script: $(realpath $0)"

echo "The script is running under this user: $USER"

echo "This script is being run under this path: $PWD"

echo "This is the user's home directory: $HOME"

echo "The script is being run under this pid: $$"

echo "We are waiting fo sleep to complete..."

sleep 10 

wait $!

echo "The sleep process in background is running under this pid: $!"

echo "This is the line number in the script: $LINENO"