#
# Dockerfile batch of coincheck by language golang
# Compiled before the resource is here @app/src/coincheck/main.go
#
FROM enakai00/centos:centos6
MAINTAINER Ryota Koganezawa

RUN yum -y install curl-devel expat-devel gettext-devel openssl-devel zlib-devel perl-ExtUtils-MakeMaker which bison gcc wget tar

ADD install_git.sh /usr/local/bin/install_git.sh
RUN chmod u+x /usr/local/bin/install_git.sh && /usr/local/bin/install_git.sh

ADD install_golang.sh /usr/local/bin/install_golang.sh
RUN chmod u+x /usr/local/bin/install_golang.sh && /usr/local/bin/install_golang.sh

ADD bash_profile /root/.bash_profile
RUN source ~/.bash_profile

ADD ./app/ /root/app/
WORKDIR /root/app
RUN chmod u+x /root/app/build.sh && /root/app/build.sh

ADD run.sh /usr/local/bin/run.sh
RUN chmod u+x /usr/local/bin/run.sh
ENTRYPOINT ["/usr/local/bin/run.sh"]
