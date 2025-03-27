#!/bin/sh

set -u
#set -x

if [ $# -ne 2 ]
then
	>&2 echo "Wrong number of arguments. Specify two files"
	exit 1
fi

DIRNAME=$1
SEARCH_STRING=$2

if [ -d $DIRNAME ]
then
	:
else
	>&2 echo "Directory $DIRNAME not found"
	exit 1
fi

FILEMATCHES=$(grep $SEARCH_STRING ${DIRNAME}/* -o -i -s -m1 | wc -l) 
LINEMATCHES=$(grep $SEARCH_STRING ${DIRNAME}/* -o -i -s | wc -l)

echo The number of files are $FILEMATCHES and the number of matching lines are $LINEMATCHES




