#!/bin/bash

notes() {
	# set up flags
	local msg=""
	local wd=""
	while getopts "cm:" OPTIONS; do
		case "$OPTIONS" in
		c ) wd=$(pwd);;
		m ) msg=$OPTARG;;
		? ) echo "WARN: $OPTION is not a valid argument\nUse -m to pass in a git commit message\n Use -c to change directories to Obsidian";;
		esac
	done

	cd ~/Documents/Obsidian/;
	
	git add *;

	if [[ "$msg" == "" ]]; then
		current_date=$(date);
		git commit -a -m "$current_date"
	else
		git commit -a -m "$msg"
	fi

	git pull;
	git push;
	
	if [ -d "$wd" ]; then
		cd "$wd"
	fi
}
