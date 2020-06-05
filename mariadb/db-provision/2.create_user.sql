CREATE USER 'lab-user'@'%' IDENTIFIED BY 'Admin456';
grant all privileges on *.* to 'lab-user'@'%';
FLUSH PRIVILEGES;