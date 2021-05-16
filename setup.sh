#!/bin/bash
way=`pwd`
cd
if [ ! -d '.screen' ]
then
	mkdir '.screen'
fi
cd $way
mv ui.py ~/.screen
mv screen.sh ~/.screen
mv link.sh ~/.screen
cd
while read line
do
	if [ $line =="alias mytime='cd | bash .screen/link.sh' "]
	then
		 
echo "alias mytime='cd | bash .screen/link.sh' " >> '.zshrc'
echo "alias mytime='cd | bash .screen/link.sh' " >> '.bashrc'