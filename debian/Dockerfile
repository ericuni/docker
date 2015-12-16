# Run Libreoffice in a container
## orgin: https://github.com/jfrazelle/dockerfiles

# docker run -d \
#	-v /etc/localtime:/etc/localtime:ro \
#	-v /tmp/.X11-unix:/tmp/.X11-unix \
#	-e DISPLAY=unix$DISPLAY \
#	-v $HOME:/root/ \
#	-e GDK_SCALE \
#	-e GDK_DPI_SCALE \
#	--name libreoffice \
#	libreoffice

FROM index.tenxcloud.com/ericuni/libreoffice:latest
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

RUN apt-get update && apt-get install -y ttf-arphic-gbsn00lp \
	ttf-arphic-gkai00mp \
	ttf-arphic-bsmi00lp \
	ttf-arphic-bkai00mp \
	fonts-ipafont-gothic \
	xfonts-100dpi \
	xfonts-75dpi \
	xfonts-cyrillic \
	xfonts-scalable \
	&& rm -rf /var/lib/apt/lists/*
RUN echo export LANG=zh_CN.gb2312 >> /etc/X11/Xsession.d/95xinput

ENTRYPOINT [ "libreoffice" ]
