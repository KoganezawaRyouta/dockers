#
# Dockerfile batch of coincheck by language golang
# Compiled before the resource is here @app/src/coincheck/main.go
#
FROM enakai00/centos:centos6
MAINTAINER Ryota Koganezawa

ADD templates/nginx.repo /etc/yum.repos.d/nginx.repo
RUN yum update -y && \
    yum install nginx

COPY templates/nginx.conf /etc/nginx/nginx.conf
COPY templates/vhosts.conf /etc/nginx/conf.d/vhosts.conf

VOLUME ./volume/nginx:/var/log/nginx
