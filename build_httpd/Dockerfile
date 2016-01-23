# Dockerfile golang web app
FROM enakai00/centos:centos6
MAINTAINER Ryota Koganezawa

RUN yum -y install httpd
ADD index.html /var/www/html/index.html
CMD service httpd start && bash
