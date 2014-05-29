#!/bin/bash

# -------------------------------------------------
# Author	: Hrushikesh N. Kulkarni
# Date		: 
# Description	: Creates a Project
# Arguments	: 
# -------------------------------------------------

MakeDirectory()
{
    Path=$1;
    echo "MakeDir: $Path";

    if [ ! -d "${Path}" ]; then
        mkdir $Path
    fi
}


DestDir=$1
TemplDir=`pwd`;
echo "Building To: " $DestDir
echo "From: " $TemplDir

cd $DestDir

make clean
rm -f  *.cpp *.h *.o Makefile 

MakeDirectory src
DestFileSrc=$DestDir/src

cp $TemplDir/Makefile $DestDir
cp $TemplDir/src/* $DestFileSrc

cp $TemplDir/Readme.txt $DestDir

