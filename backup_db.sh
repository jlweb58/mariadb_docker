#! /bin/bash
/usr/bin/mysqldump -u root -pOneringtorulethemall --all-databases | gzip > /root/database_`date '+%m-%d-%Y'`.sql.gz
cp /root/database_`date '+%m-%d-%Y'`.sql.gz /root/database_latest.sql.gz
cp /root/database_latest.sql.gz /home/jwebber

echo "backed up mysqldb"
