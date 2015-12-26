# docker run -d \
#	-v /etc/localtime:/etc/localtime:ro \
#	-v /tmp/.X11-unix:/tmp/.X11-unix \
#	-e DISPLAY=unix$DISPLAY \
#	-v $HOME:/data/ \
#	-e GDK_SCALE \
#	-e GDK_DPI_SCALE \
#	--name wps \
#	wps

## wps: office
## wpp: prenetation
## et: spreadsheet

FROM centos:latest
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

ADD http://kdl.cc.ksosoft.com/wps-community/download/a20/wps-office-10.1.0.5444-1.a20.x86_64.rpm /src/wps.rpm
RUN yum makecache && yum localinstall -y /src/wps.rpm \
	&& yum clean all \
	&& rm -rf /src

CMD ["/bin/bash"]

