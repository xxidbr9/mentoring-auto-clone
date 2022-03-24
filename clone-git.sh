#!/bin/bash

Color_Off='\033[0m'       # Text Reset
Green='\033[0;32m'        # Green
Blue='\033[0;34m'         # Blue

input="./urls.txt"
while IFS= read -r line
do
  echo -e "${Blue}Cloning from :${Color_Off} $line !!!\n"
  git clone $line
  echo -e "${Green}Success Cloning : ${Color_Off} ${line}\n"
done < "$input"