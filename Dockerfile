FROM mariadb:10.3.25 as builder

COPY database_latest.sql /docker-entrypoint-initdb.d/

