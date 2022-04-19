#!/bin/bash

#code for question 1a
sed -r '/^[[:space:]]*$/d' quotes.txt

echo" ";

#code for question 1b
awk '!x[$0]++' quotes.txt 
