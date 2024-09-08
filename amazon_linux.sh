#!/bin/bash


sudo yum install httpd  wget php-mysqlnd httpd php-fpm php-mysqli mariadb105-server php-json php php-devel -y
sudo systemctl start mariadb httpd -y
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz
sudo systemctl start httpd
sudo systemctl enable http
sudo cp -r wordpress/* /var/www/html
sudo chown -R apache:apache /var/www/html
sudo systemctl restart httpd
