## wps: office
## wpp: prenetation
## et: spreadsheet

FROM centos:latest
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

ADD http://kdl.cc.ksosoft.com/wps-community/download/a20/wps-office-10.1.0.5444-1.a20.x86_64.rpm /src/wps.rpm
RUN yum makecache && yum localinstall -y \
		dbus \
		/src/wps.rpm \
	&& yum clean all \
	&& rm -rf /src

CMD ["/bin/bash"]

