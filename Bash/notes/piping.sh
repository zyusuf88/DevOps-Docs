#!/bin/bash

#Piping 
#This script how many files in a directory 

get_file_count(){
    local directory="$1"
    local file_count

    file_count=$(ls "directory") |

    echo "Number of file in $dierc"
}

get_file_count "./"