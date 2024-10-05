#!/bin/bash

cdgit() {
	cd ~/git
	while getopts 'c:' OPTION; do
		case "$OPTION" in 
			c) cd ./$OPTARG && code ./$OPTARG ;;
			?) echo "did you mean -c to open vs code?" ;;
		esac
	done
}
