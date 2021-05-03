#!/bin/bash
declare -i var=0
annee=`date +%Y`
mois=`date +%m`
jour=`date +%d`
cd
cd .screen/$annee/$mois/
while read line;do
	var=$(( var +1 ))
done < $jour.txt
cd
cd .screen
echo $var >> "time.txt"
python3 ~/.screen/ui.py
rm time.txt