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

RUN apt-get update
RUN useradd eric
RUN mkdir -p /home/eric/Desktop
RUN apt-get install -y fontconfig-config fonts-dejavu-core krb5-locales libavahi-client3
RUN apt-get install -y libavahi-common-data libavahi-common3 libcups2 libdrm-intel1 libdrm-nouveau2
RUN apt-get install -y libdrm-radeon1 libelf1 libfontconfig1 libfreetype6 libgl1-mesa-dri
RUN apt-get install -y libgl1-mesa-glx libglapi-mesa libglib2.0-0 libglib2.0-data libglu1-mesa
RUN apt-get install -y libgssapi-krb5-2 libice6 libk5crypto3 libkeyutils1 libkrb5-3 libkrb5support0
RUN apt-get install -y libllvm3.4 libpciaccess0 libsm6 libtxc-dxtn-s2tc0 libx11-6 libx11-data
RUN apt-get install -y libx11-xcb1 libxau6 libxcb-dri2-0 libxcb-dri3-0 libxcb-glx0 libxcb-present0
RUN apt-get install -y libxcb-sync1 libxcb1 libxdamage1 libxdmcp6 libxext6 libxfixes3 libxml2
RUN apt-get install -y libxrender1 libxshmfence1 libxxf86vm1 sgml-base shared-mime-info x11-common
RUN apt-get install -y xml-core
RUN apt-get install -y xdg-utils

ADD http://kdl.cc.ksosoft.com/wps-community/download/a20/wps-office_10.1.0.5444~a20_amd64.deb /src/wps.deb
RUN dpkg -i src/wps.deb
RUN rm -rf /src/*.deb
RUN rm -rf /var/lib/apt/lists/*

