#!/bin/bash

# Renaming all .txt files to .bk
for file in *.txt; do
  mv "$file" "$(file%.txt).bak"
done

: '


