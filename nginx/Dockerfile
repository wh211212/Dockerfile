# Based on Alpine Linux latest version
FROM alpine:latest

MAINTAINER shaonbean yunwei@aniu.tv

# ENV NGINX_VERSION 1.12.2

# update alpine linux
RUN apk update && apk upgrade

# install nginx pakeages
RUN apk add nginx

# Creating new user and group 'www' for nginx
RUN adduser -D -g 'www' www

# config nginx
RUN mkdir /run/nginx
RUN mkdir -p /data/www
RUN chown -R www:www /data/www
RUN chown -R www:www /var/lib/nginx
RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig
COPY nginx.conf /etc/nginx/nginx.conf
ADD errorpages /etc/nginx/errorpages
RUN chown -R www:www /var/lib/nginx

ADD index.html /data/www/index.html 
# COPY nginx.conf /etc/nginx/nginx.conf
COPY conf.d /etc/nginx/conf.d

# config port
EXPOSE 80

# add volume
VOLUME ["/etc/nginx","/data/www","/var/lib/nginx"]

STOPSIGNAL SIGTERM
# docker run
CMD ["nginx", "-g", "daemon off;"]