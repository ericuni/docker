FROM centos:latest
## 7.1.1503

## author info
MAINTAINER Eric Wang, wangchaogo1990@gmail.com

## configure repos
ADD . /data
WORKDIR /etc/yum.repos.d
RUN mv CentOS-Base.repo CentOS-Base.repo.bak
RUN mv /data/repo/* . && rm -rf /data
RUN yum localinstall -y http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el7.rf.x86_64.rpm
RUN yum localinstall -y http://www.elrepo.org/elrepo-release-7.0-2.el7.elrepo.noarch.rpm

## install soft
RUN yum install -y yum-utils ## yum-config-manager
RUN yum-config-manager --disable system-container
RUN yum install -y net-tools ## ifconfig

## add new user
RUN useradd eric
WORKDIR /home/eric
CMD /bin/bash

