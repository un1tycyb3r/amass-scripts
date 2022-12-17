#!/usr/bash

echo "Use this program to pull ASN information from a afile and run them through amass!"

echo "What is the input file?     :"

read file


input="$file"

while IFS= read -r line

do
        amass intel -v -asn $line
done < $input
