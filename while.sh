#! /bin/bash

find . -maxdepth 1 -type f -not -name '.*' | while read line ; do
	newname="$(echo "$line" | tr '[:lower:]' '[:upper:]')"
	echo "mv "$line" "$newname""
done
