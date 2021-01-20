FROM debian:buster

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y nginx
RUN apt-get install -y mariadb-server
RUN apt-get install -y wget
RUN apt-get install -y php7.3 php-mysql php-fpm php-mbstring php-cli

COPY ./srcs/start_docker.sh /tmp/
COPY ./srcs/nginx.conf  /tmp/
COPY ./srcs/config.inc.php /tmp/
COPY ./srcs/setup_wodpress.sql /tmp/
COPY ./srcs/nginx.conf /tmp/
COPY ./srcs/wp-config /tmp/
COPY ./srcs/mysql.sh /tmp/

#INSTALL WORDPRESS
RUN wget https://fr.wordpress.org/wordpress-latest-fr_FR.zip
RUN unzip wordpress-latest-fr_FR.zip -d /var/www/
RUN chown 755 -R /var/www/wordpress
RUN rm wordpress-latest-fr_FR.zip

#INSTALL PHPMYADMIN
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.zip
RUN unzip phpMyAdmin-5.0.4-all-languages.zip -d /var/www/
RUN rm phpMyAdmin-5.0.4-all-languages.zip
RUN mv /var/www/html/phpMyAdmin-5.0.4-all-languages phpmyadmin
RUN cp ./srcs/config.inc.php /var/www/html/phpmyadmin

#SETUP NGINX
RUN service nginx start
RUN cp /tmp/nginx.conf /etc/nginx/sites-available/localhost
RUN ln -s /etc/nginx/sites-available/localhost /etc/sites-enabled
RUN rm /etc/nginx/sites-enabled/default

#SETUP MYSQL
RUN bash /tmp/mysql.sh

EXPOSE 80 443
CMD bash/tmp/start_docker.sh