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

FROM ubuntu:14.04
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

ADD http://kdl.cc.ksosoft.com/wps-community/download/a20/wps-office_10.1.0.5444~a20_amd64.deb /src/wps.deb
RUN apt-get update && dpkg -i src/wps.deb && rm -rf /src/*.deb \
	&& rm -rf /var/lib/apt/lists/*

