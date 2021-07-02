while IFS="" read -r p || [ -n "$p" ]
do 
	if echo "$p" | grep -q ".*_06_video.mp4"; then
		echo "$p" "$2"
		echo "Copied $p"
	fi

done < "$1"
