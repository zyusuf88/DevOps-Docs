#!/bin/bash
FILE="$1"

if [[ -n "$1" ]]; then
   Num=$(wc -l <"$1")
   echo "The number of lines in this file is : $Num"
else
  echo "No file provided"
fi

