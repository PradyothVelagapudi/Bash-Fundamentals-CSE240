#!/bin/bash

while getopts 'c' OPTION; do
   case "$OPTION" in
      	c)
		while getopts 'p' OPTION; do	
		case $OPTION in
		p)
			while getopts 'p' OPTION; do
			case $OPTION in
			p) 	
				echo -e '#include <iostream>'
				echo -e '#include <stdlib.h>'
				echo -e "using namespace std;"
				echo -e ""
				echo -e 'int main(int argc, char** argv)'
				echo -e '{'
				echo -e "\t//TODO: Main code"
				echo -e "\treturn 0;"
				echo -e '}'
				exit
				;;
			esac
			done
			exit
		esac
		done
	echo -e '#include <stdio.h>'
	echo -e '#include <stdlib.h>'
	echo -e ""
	echo -e 'int main(int argc, char** argv)'
	echo -e '{'
	echo -e "\t//TODO: Code goes here"
	echo -e "\treturn 0;"
	echo '}'
	exit
	;;	
   esac
done
	echo -e 'usage: ./codeTemplateMaker.sh [-c|-cpp]'
#shift "$(($OPTIND -1))"
