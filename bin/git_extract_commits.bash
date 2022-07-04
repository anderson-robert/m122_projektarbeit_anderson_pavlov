#!/bin/bash
cwd=`pwd`                   # current working directory
cd `dirname $0`             # change to the directory where the script is located
BINDIR=`pwd`                # BINDIR: the directory where the script is located
cd $cwd                     # return to the working directory
BASENAME=`basename $0`      # Set the script name (without path to it)
TMPDIR=/tmp/$BASENAME.$$    # Set a temporary directory if needed
ETCDIR=$BINDIR/../etc       # ETCDIR is the config directory

while getopts b:o: flag
do
    case "${flag}" in
        b) baserepo=${OPTARG};;
        o) output_filename=${OPTARG};;
    esac
done
echo "Base Repository: $baserepo";
echo "Output Filename: $output_filename";

target_repo=$baserepo #change $baserepo later

git log --date=format:'%Y%m%d' --format=format:"%ad %H %an" > ~/Desktop/test.txt
sed -i s@^@$target_repo@ ~/Desktop/test.txt
