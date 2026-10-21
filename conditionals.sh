#!/bin/bash

echo "Enter your marks:"
read marks

if $(($marks < 33))
echo "Failed"
elif $(($marks < 50))
echo "Third class"
elif $(($marks < 70))
echo "Second class"
else
echo "First Class!!"
fi 

