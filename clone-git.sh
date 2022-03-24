#!/bin/bash

Color_Off='\033[0m'       # Text Reset
Green='\033[0;32m'        # Green
Blue='\033[0;34m'         # Blue

input="./urls.txt"
while IFS= read -r line || [ -n "$line" ]
do
  echo -e "${Blue}Cloning repo from :${Color_Off} $line"
  git clone $line > /dev/null
  echo -e "${Green}Success cloning   : ${Color_Off} ${line}\n"
done < "$input"