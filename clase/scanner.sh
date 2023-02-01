#!/bin/bash

#for ((i=1; i<255; i++))
for i in {1..254}
do
	ping -c 1 192.168.8.$i >/dev/null
if [[ $? = 0 ]]
then
	echo "192.168.8.$i. - OK."
else
	echo "192.168.8.$i - ERROR!."
fi
done
exit 0
