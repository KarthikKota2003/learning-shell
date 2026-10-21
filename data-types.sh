#!/bin/bash

# We are playing around with data types here

var1=10
var2=20

echo "$var1+$var2"

#This will perform the actual addition

echo "$(($var1+$var2))"

var3="Kota"

#Adding string to number. Returns same result as last operation as string is treated as zero in arithmetic terms
echo "$(($var1+$var2+$var3))"

#This is same as concatenating number to string. Result is 30+Kota
echo "$(($var1+$var2))+$var3"

#declaring variable type explicitly
declare -i count_int=5

count_string=5

echo "$count_int+1"

echo "$count_string+1"