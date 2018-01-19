#!/bin/bash
#Arg 1: Path with rpms to be installed, 
#Will install rpms without dependency check according to the file "installRpmList" in the same directory
#Important: the path to rpms shoud not contain white spaces
cd $1
echo the current directory is
pwd
rpms_inList=$(cat installRpmList | wc -l)
echo there are $rpms_inList to be installed

for (( c=1; c<=$rpms_inList; c++ )){
  echo Rpm no $c to be installed...
  rpm=$( sed -n "$c p" installRpmList )	#rpm to be installed from the list in $1
  echo To be installed: $rpm
  sudo rpm -ivh --nodeps $rpm		#upgrade rpms 
}
