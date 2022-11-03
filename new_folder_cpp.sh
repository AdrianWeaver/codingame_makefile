#!/bin/bash

if [ $# != 1 ]
then
	echo "Please provide a folder name one at a time"
	exit
else
	mkdir $@
	mkdir -p $@/sources
	mkdir -p $@/includes
	cp Makefile_template_cpp $@/Makefile
fi
