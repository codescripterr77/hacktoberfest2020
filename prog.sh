find . -type f -mtime -20 -printf "%s" -ls | sort -rn | head -n 10

