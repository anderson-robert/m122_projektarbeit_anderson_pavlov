#!/bin/bash
cwd=`pwd`                   # current working directory
cd `dirname $0`             # change to the directory where the script is located
BINDIR=`pwd`                # BINDIR: the directory where the script is located
cd $cwd                     # return to the working directory
BASENAME=`basename $0`      # Set the script name (without path to it)
TMPDIR=/tmp/$BASENAME.$$    # Set a temporary directory if needed
ETCDIR=$BINDIR/../etc       # ETCDIR is the config directory


#Hier kommt ihr code