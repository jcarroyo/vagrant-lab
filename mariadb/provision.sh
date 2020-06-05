#!/bin/bash

echo "START"

#Install MariaDB
sudo yum -y update
sudo yum install -y mariadb-server
sudo systemctl start mariadb
sudo systemctl enable mariadb

mysql -u root < /vagrant/db-provision/1.create_database.sql
mysql -u root < /vagrant/db-provision/2.create_user.sql

echo "END"