#!/bin/bash
cwd=`pwd`                   # current working directory
cd `dirname $0`             # change to the directory where the script is located
BINDIR=`pwd`                # BINDIR: the directory where the script is located
cd $cwd                     # return to the working directory
BASENAME=`basename $0`      # Set the script name (without path to it)
TMPDIR=/tmp/$BASENAME.$$    # Set a temporary directory if needed
ETCDIR=$BINDIR/../etc       # ETCDIR is the config directory

. ETCDIR/lb3.conf           # Source config file

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

# create output file in directory specified in .../etc/lb3.conf
cd
cd $GEC_FILE_OUTPUT_PATH
touch $output_filename
cd
cd $cwd

find $baserepo -name '*.git' > $TMPDIR/found_repos.txt
sed -i -r 's|/[^/]+$||' $TMPDIR/found_repos.txt

#LINES=$(cat $TMPDIR/found_repos.txt) # Set LINES to each line of found_repos.txt using command substitution

cat $TMPDIR/found_repos.txt|grep -v '^#'|grep -v '^$'|while read target_repo;
do
    cd
    cd $target_repo
    git log --date=format:'%Y%m%d' --format=format:" %ad %H %an" >> $GEC_FILE_OUTPUT_PATH/$output_filename
    sed -i s@^@$target_repo@ $GEC_FILE_OUTPUT_PATH/$output_filename
    cd
    cd $cwd
done

#for LINE in $LINES
#do
#    cd $LINE
#    git log --date=format:'%Y%m%d' --format=format:" %ad %H %an" > ~/Desktop/test.txt
#    sed -i s@^@$LINE@ ~/Desktop/test.txt # ToDo: set the file to the output file parameter
#    cd
#done #< $TMPDIR/found_repos.txt

#target_repo=$baserepo #change $baserepo later

#git log --date=format:'%Y%m%d' --format=format:"%ad %H %an" > ~/Desktop/test.txt
#sed -i s@^@$target_repo@ ~/Desktop/test.txt
