#! /bin/bash

param_count=$#


if [ ${param_count} -gt 0 ]; then
	echo "Du hast ${param_count} Parameter eingegeben"
	exit 0
fi

if [ ${param_count} -eq 0 ]; then
	echo "Du musst mindestens einen Parameter eingeben"
	exit -1
fi
