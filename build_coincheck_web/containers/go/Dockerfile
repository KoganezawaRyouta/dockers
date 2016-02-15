#
# Dockerfile batch of coincheck by language golang
# Compiled before the resource is here @app/src/coincheck/main.go
#
FROM enakai00/centos:centos6
MAINTAINER Ryota Koganezawa

# RUN yum -y install curl-devel expat-devel gettext-devel openssl-devel zlib-devel perl-ExtUtils-MakeMaker which bison gcc wget tar

# ADD lib/install_git.sh /usr/local/bin/install_git.sh
# RUN chmod u+x /usr/local/bin/install_git.sh && /usr/local/bin/install_git.sh

# ADD lib/install_golang.sh /usr/local/bin/install_golang.sh
# RUN chmod u+x /usr/local/bin/install_golang.sh && /usr/local/bin/install_golang.sh

# ADD templates/bash_profile /root/.bash_profile
# RUN source ~/.bash_profile

# ADD ./app/ /root/app/
# WORKDIR /root/app
# RUN chmod u+x /root/app/build.sh && /root/app/build.sh

## ADD lib/run.sh /usr/local/bin/run.sh
## RUN chmod u+x /usr/local/bin/run.sh
## CMD ["/usr/local/bin/run.sh"]

ADD ./app/bin/ /root/
CMD ["/root/coincheck"]
EXPOSE 9000
