#!/bin/bash
#This script will show all images on the specified location
#Arg 1: Path to images: E.g external drive: /medi/sjefen/MY\ PASSPORT

path=(cd "$1")				   #must store in array...
"${path[@]}"  				   #changing directory..
echo we are now standing in
pwd
echo "Generating imagelist in the specified path.."
find . -iname *JPG > imagelist_tmp
sed 's/ /\\ /g' imagelist_tmp > imagelist	   #set real path 
linesCount=$( cat imagelist | wc -l)		   #Get number of lines
echo There is $linesCount JPG pictures in $1

for (( c=1; c<=$linesCount; c++ )){
  picture=$( sed -n "$c p" imagelist )
  echo $picture
  echo $picture | xargs eog & 	   	  	   #view the image
  sleep 0.8
  pid=$( pgrep eog )
  kill $pid
}
