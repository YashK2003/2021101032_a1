#!/bin/bash

# code for question 4
read -r line
arr=(${line//,/ }) #convert the commas to spaces

# printing the original array
echo "Array in original order"
echo ${arr[*]}
n=${#arr[*]}

# bubblesort code to sort the array
for ((i=0; i<n; i++))
do
    
    for((j=0; j<n-i-1; j++))
    do
    
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done

# printing the sorted array
echo "Array in sorted order :"
echo ${arr[*]}
