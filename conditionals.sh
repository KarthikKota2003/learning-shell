#!/bin/bash

echo "Enter your marks:"
read marks

if (($marks < 33)); then
echo "Failed"
elif (($marks < 50)); then
echo "Third class"
elif (($marks < 70)); then
echo "Second class"
else
echo "First Class!!"
fi 

