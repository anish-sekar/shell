#!/bin/bash
#Program name
echo "Program name :$0"

#Argument Count
echo "Argument Count :$#"

#Actual arguments
echo "Actual args :$@"




for file in $@; do
	echo "searching $file"
	grep foobar "$file" > ./success 2> ./failure
	
	if [[$? -ne 0]] ; then 
		
	echo "foobar not found in $file "
	
	fi
	
done
