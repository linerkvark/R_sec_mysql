#!/bin/bash


for d in $(mysql -uroot -p'$qlghjcnF2021' -N -e"show databases like '%otus%'")
	do
	for t in $(mysql -uroot -N -p'$qlghjcnF2021' -e"show tables from $d")
		do
		dir=$d'_'$(date +%F_%H:%M)
		mkdir $dir
		mysqldump -u root -p'$qlghjcnF2021' $d $t --source-data=2 > ./$dir/$t.sql 
		done
	done 
