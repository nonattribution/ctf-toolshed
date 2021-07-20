#!/bin/bash

HOST=$1
FILE=$2
# read $FILE using the file descriptors
exec 3<&0
exec 0<$FILE
while read line
do
	echo -n "$line : "
	# /usr/bin/dig $line @9.9.9.9 +short
	/usr/bin/curl -i $HOST/$line
	# /usr/bin/wget
	# echo $line
	echo
	sleep 3.8
done
exec 0<&3
