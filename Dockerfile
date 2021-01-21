FROM debian:buster
LABEL eoliveir <eoliveir@student.42.fr>

RUN apt-get -y update \
&& apt-get -y install mariadb-server \ 
&& apt-get -y install wget \
&& apt-get -y install php \
&& apt-get -y install php7.3 \
&& apt-get -y install php-cli \
&& apt-get -y install php-cgi \
&& apt-get -y install php-mbstring \
&& apt-get -y install php-fpm \
&& apt-get -y install php-mysql \
&& apt-get -y install nginx \
&& apt-get -y install libnss3-tools

COPY srcs ./root/
WORKDIR /root/
CMD bash container_entrypoint.sh