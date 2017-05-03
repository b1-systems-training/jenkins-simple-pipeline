#!/bin/bash
set -u

failures=0

check() {
  if [ "$1" -ne "$2" ]; then
    echo Test failed
    failures=$(( failures + 1 ))
  fi
}

# This script is a super simple way to test the functionality of superscript.sh

echo If given arguments, superscript.sh should simply echo them on STDOUT
STRING='HELLO WORLD'
bash ./superscript.sh "$STRING" | grep -q "^$STRING$"
check $? 0


echo If given no arguments, superscript.sh should exit with return code 1
bash ./superscript.sh
check $? 1

if [ "$failures" -ge 1 ];then
	echo $failures Tests failed
	exit 1
fi
