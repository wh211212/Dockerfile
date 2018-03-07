# Based on Alpine Linux latest version
FROM alpine:latest

LABEL maintainer="Alpine Docker Maintainers shaonbean yunwei@aniu.tv"

# ENV NGINX_VERSION 1.12.2

# update alpine linux
RUN apk update && apk upgrade

# install nginx pakeages
RUN apk add nginx

# Creating new user and group 'www' for nginx
RUN adduser -D -g 'www' www

# config nginx
RUN mkdir -p /data/www
RUN chown -R www:www /data/www
RUN chown -R www:www /var/lib/nginx
RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig
ADD nginx.conf /etc/nginx/nginx.conf
ADD index.html /data/www/index.html 
# COPY nginx.conf /etc/nginx/nginx.conf
COPY conf.d /etc/nginx/conf.d

# config port
EXPOSE 80

# add volume
VOLUME ["/etc/nginx","/data/www","/var/lib/nginx"]

# docker run
CMD ["nginx", "-g", "daemon off;"]