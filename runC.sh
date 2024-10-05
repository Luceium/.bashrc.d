#!bin/bash

runC(){
	if [ -f $1 ]; then 
		gcc $1 -o tmpCOut;
		./tmpCOut;
		rm tmpCOut;
	else
		echo "Please provide a valid C function in the form: runC myFile.c";
	fi
}
