#!/bin/bash

# new-roll
# hot fluffy rolls for ansible. ;)
# get roll name, make dirs for roll
# TODO: touch base files.

if [[ -n $1 ]]; then
	roll_name=$1 #mmm...buttery
else 
	echo -n "Enter a name for the Ansible role: "
	read roll_name
fi

roll_name="${roll_name//[^a-zA-Z0-9]/}" #sanitize user input
roll_name="${roll_name,,}" #force lowercase

if [[ -z $roll_name ]]; then 
	echo "ERROR: Invalid Name"
	exit 1
fi


if [[ ! -d ./roles/${roll_name} ]]; then
	mkdir -p ./roles/${roll_name}/{tasks,handlers,files,templates,vars,defaults,meta}
else
	echo "Nope: A folder named: ${roll_name} already exists."
	exit 0
fi

# COWER, BEEF MORTALS
#   --Vaca de la Muerte
