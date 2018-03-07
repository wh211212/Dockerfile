# Based on Alpine Linux latest version
FROM alpine:latest

LABEL maintainer="Alpine Docker Maintainers shaonbean yunwei@aniu.tv"

# add aliyun mirrors for to quickly build 
RUN echo 'http://mirrors.aliyun.com/alpine/latest-stable/main' > /etc/apk/repositories
RUN echo '@community http://mirrors.aliyun.com/alpine/latest-stable/community' >> /etc/apk/repositories
#RUN echo '@testing http://mirrors.aliyun.com/alpine/edge/testing' >> /etc/apk/repositories

RUN apk update && apk upgrade

# set timezone
ENV TIMEZONE Asia/Shanghai
RUN apk add tzdata
RUN ln -snf /usr/share/zoneinfo/$TIMEZONE /etc/localtime
RUN echo $TIMEZONE > /etc/timezone

CMD ["sh"]