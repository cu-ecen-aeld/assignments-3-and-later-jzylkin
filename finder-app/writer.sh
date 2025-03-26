set -u
#set -x

if [ $# -ne 2 ]
then
	>&2 echo "Wrong number of arguments. Specify two files"
	exit 1
fi

writefile=$1
writedir=${writefile%/*}
writestr=$2

if [ -d $writedir ]
then
	:
else
	mkdir -p $writedir
fi

echo $writestr > $writefile

if [ $? -ne 0 ]
then
	>&2 echo "could not create file"
	exit 1
fi


