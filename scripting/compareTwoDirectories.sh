#!/bin/bash
#Arg1: Directory_1
#Arg2: Directory_2
#Creates a list of files for directory 1 and directory 2, compres them and finds the dirrences.
current_dir=$( pwd )
#Create list of all files in directories
cd $1
find -follow > $current_dir/files_in_directory1
cd $current_dir
cd $2
find -follow > $current_dir/files_in_directory2
cd $current_dir
#Print the files to stdout
#echo All files in Directory $1
#cat files_in_directory1
#echo All files in Directory $2
#cat files_in_directory2
#Write the differences between the two directories
grep -Fxv -f files_in_directory1 files_in_directory2 > filesInDir1_vs_filesInDir2
echo "--------you find the following files in Directory: $2 you don't find in: $1 -------" > summaryCompareDirectories
cat filesInDir1_vs_filesInDir2 >> summaryCompareDirectories
grep -Fxv -f files_in_directory2 files_in_directory1 > filesInDir2_vs_filesInDir1
echo "--------you find the following files in Directory: $1 you don't find in: $2 -------" >> summaryCompareDirectories
cat filesInDir2_vs_filesInDir1 >> summaryCompareDirectories
vi summaryCompareDirectories




