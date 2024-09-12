#!/bin/bash

if [ -z "$1" ]; then
  echo "Error: Please provide a word or phrase to search for."
  exit 1
fi


if grep -l "$1" *.log > /dev/null; then
  echo "Found the word '$1' in the file."
else
  echo "Unable to find '$1' in any file."
fi







