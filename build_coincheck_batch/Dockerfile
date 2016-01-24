#
# Dockerfile batch of coincheck by language golang
# Compiled before the resource is here @src/coincheck/main.go
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

ADD ./bin/ /usr/local/bin/
ADD run.sh /usr/local/bin/run.sh
RUN chmod u+x /usr/local/bin/run.sh
ENTRYPOINT ["/usr/local/bin/run.sh"]
