#!/bin/sh
# Solution for assignment 1
# Author: Mydhily M R

#########################################
#if [ <some test> ]
#then
#<commands>
#fi
#########################################
writefile="$1"
writestr="$2"

#Number of arguments should be 2
if [ $# -ne 2 ]
then
echo "Usage: $0 <arg1> <arg2>"
exit 1
fi

# Extract directory path from file path
dirpath=$(dirname "$writefile")

# Create directory path if it doesn't exist
mkdir -p "$dirpath" 

# Create file in the path if it doesn't exist
echo "$writestr" > "$writefile"

exit 0