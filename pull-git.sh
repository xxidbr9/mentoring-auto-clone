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
  cd ./${dirs[i]}
  git pull > /dev/null
  cd ../
  echo "Pulling from ./${dirs[i]} ✨"
done