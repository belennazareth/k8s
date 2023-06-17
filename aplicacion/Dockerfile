FROM php:7.4-apache-bullseye
MAINTAINER Belen Nazareth Duran "belennazareth29@gmail.com"
RUN apt update && apt upgrade -y && docker-php-ext-install mysqli pdo pdo_mysql && apt install mariadb-client -y && apt clean && rm -rf /var/lib/apt/lists/*
COPY bookmedik /var/www/html/
ADD script.sh /opt/
RUN chmod +x /opt/script.sh 
CMD ["/opt/script.sh"]
