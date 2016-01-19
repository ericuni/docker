FROM centos:latest
## 7.1.1503

## author info
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

## configure repos
ADD . /data
RUN mv /data/repo/* /etc/yum.repos.d \
	&& rm -rf /data \
	&& yum localinstall -y http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el7.rf.x86_64.rpm \
	&& yum localinstall -y http://www.elrepo.org/elrepo-release-7.0-2.el7.elrepo.noarch.rpm \
	&& yum install -y yum-utils \
	&& yum-config-manager --disable system-container \

## install soft
RUN yum install -y net-tools && yum clean all

