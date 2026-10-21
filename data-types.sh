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