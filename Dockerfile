FROM mariadb:10.3.25 as builder

COPY database_latest.sql /docker-entrypoint-initdb.d/




#RUN ["sed", "-i", "s/exec \"$@\"/echo \"not running $@\"/", "/usr/local/bin/docker-entrypoint.sh"]



