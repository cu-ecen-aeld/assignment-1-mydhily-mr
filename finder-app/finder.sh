#!/bin/sh
# Solution for assignment 1
# Author: Mydhily M R

#########################################
#Write a shell script finder-app/finder.sh as described below:

#Accepts the following runtime arguments: the first argument is a path to a directory on the filesystem, referred to below as filesdir; the second argument is a text string which will be searched within these files, referred to below as searchstr

#Exits with return value 1 error and print statements if any of the parameters above were not specified

#Exits with return value 1 error and print statements if filesdir does not represent a directory on the filesystem

#Prints a message "The number of files are X and the number of matching lines are Y" where X is the number of files in the directory and all subdirectories and Y is the number of matching lines found in respective files, where a matching line refers to a line which contains searchstr (and may also contain additional content).
#########################################
filesdir="$1"
searchstr="$2"

#Number of arguments should be 2
#if [ $# -gt 2 ] || [ $# -lt 2 ]
if [ $# -ne 2 ]
then
echo "Usage: $0 <arg1> <arg2>"
exit 1
fi

#If first variable is not a directory then exit code
if [ ! -d "$filesdir" ]
then
echo "Error: Directory '$filesdir' does not exist"
exit 1
fi

filecount=$(find "$filesdir" -type f | wc -l)
linecount=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $filecount and the number of matching lines are $linecount"

exit 0