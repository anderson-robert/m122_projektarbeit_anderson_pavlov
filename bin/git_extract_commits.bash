#!/bin/bash
cwd=`pwd`                   # current working directory
cd `dirname $0`             # change to the directory where the script is located
BINDIR=`pwd`                # BINDIR: the directory where the script is located
cd $cwd                     # return to the working directory
BASENAME=`basename $0`      # Set the script name (without path to it)
TMPDIR=/tmp/$BASENAME.$$    # Set a temporary directory if needed
ETCDIR=$BINDIR/../etc       # ETCDIR is the config directory

# create and populate temp dir
cd
cd /tmp
mkdir $TMPDIR
cd $TMPDIR
touch found_repos.txt    
cd
cd $cwd

while getopts b:o: flag
do
    case "${flag}" in
        b) baserepo=${OPTARG};;
        o) output_filename=${OPTARG};;
    esac
done
echo "Base Repository: $baserepo";
echo "Output Filename: $output_filename";

find $baserepo -name '*.git' > $TMPDIR/found_repos.txt
sed -i -r 's|/[^/]+$||' $TMPDIR/found_repos.txt

#target_repo=$baserepo #change $baserepo later

#git log --date=format:'%Y%m%d' --format=format:"%ad %H %an" > ~/Desktop/test.txt
#sed -i s@^@$target_repo@ ~/Desktop/test.txt
