#!/bin/bash

#These are special variables in shell

echo "The args passed to the script are: $@"
echo "The number of args passed are: $#"

echo "Second arg passed to script is: $2"

echo "The name of this script is: $0"
echo "The Absolute path for this script: $(realpath $0)"