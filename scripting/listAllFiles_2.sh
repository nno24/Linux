#!/bin/bash
#Arg 1: Path


home_dir=$( pwd )
input_dir=$1

function check_files_folders {
for entry in $entries
do
	if [ -d $entry ]
	then
		current_dir=$( pwd )
		echo $current_dir/$entry >> $home_dir/list_d
	else
		current_dir=$( pwd )
		echo current dir is $current_dir
		echo $current_dir/$entry >> $home_dir/list_f
	fi

done
}

#Clear files & Start in the parent directory..
echo " " > $home_dir/list_f
echo " " > $home_dir/list_dv

cd $input_dir
entries=$( ls )
check_files_folders



level1_subdirs=$( cat list_d | wc -l )

if [ $level1_subfolder != 0 ]
then

for (( c=1; c<=$level1_subdirs; c++ ))
do
	subdir=$( sed -n "$c p" list_d )
	cd $subdir
	#Now check for files and folders..
	entries=$( ls )
	check_files_folders
done

fi

#Display the files
echo The files are...
cat $home_dir/list_f
echo The subdirs are...
cat $home_dir/list_d



