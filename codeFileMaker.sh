#!/bin/bash

if [[ "$4" == '-o' ]] && [[ ! -z "$5" ]] && [[ -z "$6" ]]; then
	oFile="$5"
	echo "Created file ${oFile}"
	touch "${oFile}"
	(./makeHeader.sh "$2" "$3") > "${oFile}"
	./codeTemplateMaker.sh "$1" >> "${oFile}"
	exit
elif [[ ! -z "$1" ]] && [[ ! -z "$2" ]] && [[ ! -z "$3" ]] && [[ -z "$4" ]]; then
	./makeHeader.sh "$2" "$3"
	./codeTemplateMaker.sh "$1"
	exit
else
	echo "usage: ./codeFileMaker.sh [-c|-cpp] [name] [description] -o [output_file]"
	exit
fi #endif
