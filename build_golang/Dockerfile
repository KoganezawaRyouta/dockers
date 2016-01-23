# Dockerfile Golang web app
FROM enakai00/centos:centos6
MAINTAINER Ryota Koganezawa

RUN yum -y install curl-devel expat-devel gettext-devel openssl-devel zlib-devel perl-ExtUtils-MakeMaker which bison gcc wget tar

ADD install_git.sh /usr/local/bin/install_git.sh
RUN chmod u+x /usr/local/bin/install_git.sh && /usr/local/bin/install_git.sh

ADD install_golang.sh /usr/local/bin/install_golang.sh
RUN chmod u+x /usr/local/bin/install_golang.sh && /usr/local/bin/install_golang.sh

ADD bash_profile /root/.bash_profile
RUN source ~/.bash_profile
CMD bash
