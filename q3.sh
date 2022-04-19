#!/bin/bash

#code for question 1a
echo -n  "size of file is: "
wc -c "$1" | awk '{print $1}'
echo " "

#code for question 1b
echo -n  "number of lines in file is: "
cat "$1" | wc -l
echo " "

#code for question 1c
echo -n  "number of words in file is: "
wc -w "$1" | awk '{print $1}'
echo " "

#code for question 1d
file="$1"
i=1
while read l; do
echo "Line No : $i - Count of Words :` wc -w <<< "$l"`"
((i++)) 
done <"$file"
echo " "

#code for question 1e
file="$1"
grep -E -o '\w++' "$file" |sort>"temp1.txt"
count=0
uniq -c "temp1.txt" > "temp2.txt"
while read -r l;
do
array=($l)
if (($((${array[0]}-1))==0))
then
continue
else
echo "Word : ${array[1]}  - Count of Repetitions : $((${array[0]}-1))"
fi
done < "temp2.txt"
echo " "
rm temp1.txt
rm temp2.txt
