#!/bin/bash
declare -i var=0
annee=`date +%Y`
mois=`date +%m`
jour=`date +%d`
if [ $jour -lt 6]
then
	if [ $jour -eq 1];then
		reste= $(( mois +2 ))
		if [ $reste -eq 0 ]
		then
			jour_2=$(( jour -1 ))
			jour_3=$(( jour_2 -1))
			jour_4=$(( jour_3 -1))
			jour_5=$(( jour_4 -1))
			jour_6=$(( jour_5 -1))
		fi
	fi		
fi
jour_2=$(( jour -1))
jour_3=$(( jour_2 -1))
jour_4=$(( jour_3 -1))
jour_5=$(( jour_4 -1))
jour_6=$(( jour_5 -1))
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