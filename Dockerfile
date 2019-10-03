FROM ubuntu:18.04
MAINTAINER "Eman Azab"
#Install git
RUN apt-get update
RUN apt-get install -y apache2

ADD index.html  /var/www/html/index.html

EXPOSE 3333

CMD /usr/sbin/apache2ctl -D FOREGROUND

