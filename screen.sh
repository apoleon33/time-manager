#!/bin/bash
checkout(){
cd
if [ ! -d '.screen' ];then
	mkdir '.screen'
fi
cd '.screen'
declare -i time=0
annee=`date +%Y`
mois=`date +%m`
jour=`date +%d`
temp=`date`
if [ ! -d $annee ];then
	mkdir $annee
fi
cd $annee
if [ ! -d $mois ];then
	mkdir $mois	
fi
cd $mois
if [ ! -f $jour ];then
	touch $jour.txt
fi
}
checkout
while $true
do
	checkout
	cd
	cd .screen/$annee/$mois
	echo "1" >> "$jour.txt"
	sleep 1
done