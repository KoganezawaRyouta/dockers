#
# Dockerfile batch of coincheck by language golang
# Compiled before the resource is here @app/src/coincheck/main.go
#
FROM enakai00/centos:centos6
MAINTAINER Ryota Koganezawa

RUN rpm -ivh http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm
RUN yum update -y && yum -y install nginx

COPY templates/nginx.conf /etc/nginx/nginx.conf
# COPY templates/vhosts.conf /etc/nginx/conf.d/vhosts.conf

EXPOSE 80

ENTRYPOINT /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf
