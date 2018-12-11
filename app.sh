#! /bin/bash

# Setting the delimiter
IFS=";" read -r -a array <<< "foo@bar;bar@foo;lop@gop;gop@lop"

for item in "${array[@]}"
do
	echo First sequence:
	echo "$item" | sed "s/[@].*//"
	echo Second sequence:
	echo "$item" | sed "s/.*[@]//"
done
