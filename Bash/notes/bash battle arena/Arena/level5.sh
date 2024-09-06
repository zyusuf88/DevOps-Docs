#!/bin/bash

mkdir Battlefield
cd Battle*
touch knight.txt sorcerer.txt rougue.txt

if [ -f "knight.txt" ]; then
        mkdir Archive
        mv knight.txt Archive/

fi

ls 
ls ./Archive
