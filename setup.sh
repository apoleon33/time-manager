#!/bin/bash
user=`users`
if [ ! -d '~/.screen' ]
then
	mkdir '~/.screen'
fi
mv ui.py ~/.screen