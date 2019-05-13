#!/bin/bash

input_file=$1
output_folder=$2

while IFS= read -r FILE
do
  ls $FILE
  cp $FILE $output_folder
done < "$input_file"
