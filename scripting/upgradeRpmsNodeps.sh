#!/bin/bash
#Arg 1: Path with rpms to be upgraded
#Will upgrade rpms without dependency check according to the file "upgradeRpmList" in the same directory
#Important: the path to the rpms should not contain any white spaces

cd $1
echo the current directory is
pwd
rpms_inList=$(cat upgradeRpmList | wc -l)
echo there are $rpms_inList to be upgraded

for (( c=1; c<=$rpms_inList; c++ )){
  echo Rpm no $c to be upgraded...
  rpm=$( sed -n "$c p" upgradeRpmList )	#rpm to be upgraded from the list in $1
  echo To be upgraded: $rpm
  sudo rpm -Uvh --nodeps $rpm		#upgrade rpms 
}
