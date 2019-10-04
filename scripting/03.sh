#!/bin/bash
c_std="\033[0;39m"
c_h_std="\033[1;39m"
c_h_red="\033[1;31m"
c_cayan="\033[0;36m"
echo -e "\033${c_h_red}sqrt(x)"
echo ""
echo -e "${c_cayan}insert the x:${c_std}"
read NBR

COUNT="0"
COUNTX2="0"
if [[ $NBR =~ ^[0-9]+$ ]] ; then
	while [ "$COUNTX2" -ne  "$NBR" ] ; do
		COUNT=$[$COUNT+1]
		COUNTX2="$(( $COUNT * $COUNT))"
		if [ "$COUNT" == "$NBR" ] ; then
			echo "number haven't sqrt"
			exit 0
		fi
	done
echo -e "${c_h_std}sqrt = $COUNT"
exit 0
else
	echo -e "${c_h_red}number is NOT correct"
	exit 0
fi
