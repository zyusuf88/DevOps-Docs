#!/bin/bash

#length=5
#width=8

#input the values in the terminal 
length="$1"
width="$2"

area=$((length * width))
perimeter=$((2 * (length + width)))


echo "Rectangle area: $area"
echo "Rectangle perimeter: $perimeter"


: '
 bash arithmetic_expansion.sh 8 5
output : 
Rectangle area: 40
Rectangle perimeter: 26
'
