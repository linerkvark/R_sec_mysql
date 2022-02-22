#!/bin/bash


pass=$(cat /root/sqlpass)
dir='radius_'$(date +%F_%H:%M)
mkdir $dir

for d in $(mysql -uroot -p$pass -N -e"show databases like '%radius%'")
	do
	for t in $(mysql -uroot -N -p$pass -e"show tables from $d")
		do
		mysqldump -u root -p$pass $d $t --master-data=2 > ./$dir/$t.sql
		done
	done


prom='/etc/prometheus/'
kib='/etc/kibana/'
logst='/etc/logstash/'

tar -zcf prom.tar.gz $prom
tar -zcf kib.tar.gz $kib
tar -zcf logst.tar.gz $logst

git add -A
git commit -m 'backup_'$(date +%F_%H:%M)
