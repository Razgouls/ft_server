#NGINX
mkdir /var/www/localhost
cp nginx_conf /etc/nginx/sites-available/localhost
ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/
cp info.php /var/www/localhost/

#MYSQL
service mysql start
echo "CREATE DATABASE wordpress;" | mysql -u root
echo "CREATE USER 'test'@'localhost';" | mysql -u root
echo "SET password FOR 'test'@'localhost' = password('password');" | mysql -u root
echo "GRANT ALL ON wordpress.* TO 'test'@'localhost' IDENTIFIED BY 'password' WITH GRANT OPTION;" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root
mysql wordpress -u root < wordpress.sql

#WORDPRESS
wget http://fr.wordpress.org/latest-fr_FR.tar.gz
tar -xzvf latest-fr_FR.tar.gz
cp -r wordpress /var/www/localhost/wordpress
cp wp-config.php /var/www/localhost/wordpress/

#PHPMYADMIN
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
tar -xzvf phpMyAdmin-4.9.0.1-all-languages.tar.gz
mv phpMyAdmin-4.9.0.1-all-languages phpMyAdmin
cp -r phpMyAdmin /var/www/localhost/phpMyAdmin

#START
service mysql restart
/etc/init.d/php7.3-fpm start
service nginx restart
bash