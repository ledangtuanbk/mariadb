# mariadb
custom mariadb version 10.4.7

# run 
docker run --name CONTAINER_NAME --restart=always -v VOLUME_NAME:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=1 -d -p 3306:3306 ledangtuanbk/mariadb:10.4.7

# backup
docker exec -t CONTAINER_NAME mysqldump -u root -p MYSQL_ROOT_PASSWORD DATABASE_NAME > /mnt/backup_`date +%d-%m-%Y"_"%H_%M_%S`.sql

# Restore
cat backup.sql | docker exec -i CONTAINER /usr/bin/mysql -u root -p MYSQL_ROOT_PASSWORD DATABASE_NAME

# create user
CREATE USER 'user'@'%' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON *.* TO 'user'@'%';

# create database
CREATE SCHEMA `my_db` DEFAULT CHARACTER SET utf8mb4 ;
