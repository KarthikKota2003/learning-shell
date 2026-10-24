#!/bin/bash

# We are practicing loops here

# for number in {1..100}
# do
#     echo $number
# done

for package in $@
do
    echo "We are going to install $package"
done