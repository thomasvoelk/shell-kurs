#! /bin/bash

param_count=$#
input_weekday=$(echo "${1}" | tr '[:upper:]' '[:lower:]')
gotta_work="XXX"

if [ ${param_count} -gt 0 ]; then
	echo "Du hast ${param_count} Parameter eingegeben"
fi

if [ ${param_count} -eq 0 ]; then
	echo "Du musst mindestens einen Parameter eingeben"
	exit -1
fi

case ${input_weekday} in
	'montag'|'dienstag'|'mittwoch'|'donnerstag'|'freitag')
		gotta_work="Du musst leider arbeiten :(";;
	'samstag'|'sonntag')
		gotta_work="Du kannst Party machen :(";;
	*) 
		gotta_work="Du bist doof...";;	
esac
echo ${gotta_work}
