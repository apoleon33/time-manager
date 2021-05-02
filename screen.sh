#!/bin/bash
checkout(){
cd
if [ ! -d '.screen' ];then
	mkdir '.screen'
fi
cd '.screen'
annee=`date +%Y`
mois=`date +%m`
jour=`date +%d`
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