#!/bin/bash

if [ "$#" -lt 1 ]; then
	echo usage $0 String
	exit 0
fi

echo $@
