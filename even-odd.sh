#!/bin/bash

# We are trying to tell if a number is odd or even here

echo "Enter the number here:"
read number

if (($number % 2 == 0)); then
echo "$number is even"
else
echo "$number is odd"
fi
