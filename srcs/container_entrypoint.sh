mkdir /var/www/localhost
chown -R $USER:$USER /var/www/localhost
cp nginx_conf /etc/nginx/sites-available/localhost
ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/
nginx -t
cp info.php /var/www/localhost

cp todo_list.php /var/www/localhost/todo_list.php

service mysql restart
/etc/init.d/php7.3-fpm start
service nginx restart
bash