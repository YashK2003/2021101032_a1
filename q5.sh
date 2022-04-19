#!/bin/bash

#code for question 5a part
read str
n=${#str}
for ((i=$n-1; i>=0;i--))
    do
ch=${str:i:1}
echo -n $ch
     done
echo ""

#code for question 5b part
for (( i=$n-1; i>=0; i-- ));
do
    str=$str${tempstr:$i:1}
done

for ((i=$n-1; i>=0;i--))
    do
ch=${str:i:1}
ch=$(echo "$ch" | tr "0-9a-zA-Z" "1-9a-zA-Z")
echo -n $ch
     done
echo " "

#code for question 5c part
for ((i=$n/2-1; i>=0;i--))
    do
ch=${str:i:1}
echo -n $ch
     done
for ((i=$n/2; i<n;i++))
    do
ch=${str:i:1}
echo -n $ch
     done
echo ""
