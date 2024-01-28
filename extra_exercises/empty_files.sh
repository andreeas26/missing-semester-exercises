#!/bin/bash
# Write a Bash script based on the following requirements:
# - Creates 25 empty (0 KB) files. (Hint: Use the touch command.)
# - The file names should be <yourName><number>, <yourName><number+1>, <yourName><number+2>, and so on.
# - Design the script so that each time you run it, it creates the next batch of 25 files with increasing numbers starting with the last or maximum number that already exists.
# - Do not hard code these numbers. You need to generate them by using automation.

if [[ $1 != "" ]];then
	your_name=$1
else
	your_name=andreea
fi

n_files=0
last_file=""
shopt -s nullglob
for file in "$your_name"*;do
	if [[ -f "$file" ]];then
		((n_files++))
		last_file=$file
	fi
done

#echo "$last_file"

echo "Found $n_files already created"

max_batch=$((n_files + 24))

#echo $max_batch

for ((i=n_files; i<=max_batch; i++)); do
	touch "$your_name$i"
done


