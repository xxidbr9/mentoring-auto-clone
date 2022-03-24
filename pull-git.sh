#! /bin/bash
declare -a dirs
i=1
for d in */
do
    dirs[i++]="${d%/}"
done
echo "There are ${#dirs[@]} dirs in the current path"
for((i=1;i<=${#dirs[@]};i++))
do
  echo "pulling from ./${dirs[i]}"
  cd ./${dirs[i]}
  git pull 
  cd ../
done
