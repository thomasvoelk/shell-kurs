#! /bin/bash

param_count=$#

if [ ${param_count} -gt 0 ]; then
	echo "Du hast ${param_count} Parameter eingegeben"
fi

if [ ${param_count} -eq 0 ]; then
	echo "Du musst mindestens einen Parameter eingeben"
	exit -1
fi

make_name() {
	input_filename=${1}
	base_name=$(basename "${input_filename}")
	dir_name=$(dirname "${input_filename}")
	echo $dir_name/$base_name
}

echo $(make_name "${1}")
