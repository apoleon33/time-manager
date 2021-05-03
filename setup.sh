#!/bin/bash
user=`users`
if [ ! -d '~/.screen' ]
then
	mkdir '~/.screen'
fi
mv ui.py ~/.screen
mv link.sh ~/.screen
echo "alias mytime='bash ~/.screen/link.sh' "