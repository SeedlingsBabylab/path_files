#!/bin/bash

# A short script to copy all opf files from subject files into annotated_opf folder (or 
# any other folder you'd like ;) ). Thanks to Gladys Baudet for inspiration. 
# Input file is path file for the opf files (you can find it in the path files repo. 
# It contains a list of all the opf files.)

input_file=$1
output_folder="/Volumes/pn-opus/Seedlings/Compiled_Data/annotated_opf/annotated_opf"

function move {
	ls $1
	name=$(basename -s ".opf" $1)
	echo $name
	mkdir $output_folder/$name
	echo "$output_folder/$name"
	unzip $1 -d $output_folder/$name 
}

while IFS= read -r FILE
do
	if [ -f $FILE ]; then
		move $FILE
	else
		files=$(find $(dirname $FILE) -maxdepth 1 -name '*.opf')
		num=$(echo $files | wc -w)
		if [ num -gt 1 ]; then
			echo "More than one opf file !!!"
			echo $files
		else
			move $files	
		fi
	fi
done < "$input_file"

# We will also copy the usedID file, just in case! 

cp "/Volumes/pn-opus/Seedlings/usedID.txt" $output_folder
