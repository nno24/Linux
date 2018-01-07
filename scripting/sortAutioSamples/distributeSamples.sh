#!/bin/bash
#Arg1: Path to pack or samples

path_to_packs="/home/sjefen/Linux/scripting/sortAutioSamples/Samples/Packs"
path_to_singles="/home/sjefen/Linux/scripting/sortAutioSamples/Samples/Singles"
sample_types='pack singles'
PS3='Select type of samples: '

select samples in $sample_types
do
  if [ $samples == 'pack' ]
  then
    echo Moving from $1 to $path_to_packs
    mv -v $1 $path_to_packs
    break
  else
    mv -v $1 $path_to_singles
    break
  fi
  echo Done moving $1
done
