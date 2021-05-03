#!/bin/bash
way=`pwd`
cd
if [ ! -d '.screen' ]
then
	mkdir '.screen'
fi
cd $way
mv ui.py ~/.screen
mv link.sh ~/.screen
cd
echo "alias mytime='cd | bash .screen/link.sh' " >> '.zshrc'
echo "alias mytime='cd | bash .screen/link.sh' " >> '.bashrc'