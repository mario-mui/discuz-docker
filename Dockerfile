FROM ubuntu:14.04
MAINTAINER Mario.Ma <mario.ma@trantect.com>

# set work dir
WORKDIR /server

# Update apt-get local index
RUN apt-get -qq update

# Install
RUN apt-get -y --force-yes install supervisor nginx mysql-server mysql-client php5 php5-gd php5-fpm php5-mysql php5-mcrypt

#RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

#add default nginx conf
ADD ./default /etc/nginx/sites-available/default

RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf

ADD ./supervisord.conf /etc/supervisor/supervisord.conf

#add server code to docker server dir
ADD ./ /server

RUN service mysql start && \
    mysql -uroot < /server/discuz.sql

# Expose ports
EXPOSE 80
EXPOSE 443

# start servver
CMD ["/usr/bin/supervisord"]