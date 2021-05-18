#!/bin/bash
declare -i var=0
annee=`date +%Y`
mois=`date +%m`
jour=`date +%d`
jour2=`date --date="-1 day" +%d`
jour3=`date --date="-2 day" +%d`
jour4=`date --date="-3 day" +%d`
jour5=`date --date="-4 day" +%d`
jour6=`date --date="-5 day" +%d`
jour7=`date --date="-6 day" +%d`
if [ $jour -lt 6]
then
	$mois2=
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