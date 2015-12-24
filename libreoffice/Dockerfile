# Run Libreoffice in a container
## orgin: https://github.com/jfrazelle/dockerfiles

# docker run -d \
#	-v /etc/localtime:/etc/localtime:ro \
#	-v /tmp/.X11-unix:/tmp/.X11-unix \
#	-e DISPLAY=unix$DISPLAY \
#	-v $HOME:/data/ \
#	-e GDK_SCALE \
#	-e GDK_DPI_SCALE \
#	--name libreoffice \
#	libreoffice

FROM ubuntu:14.04
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

ENV LANG C.UTF-8

RUN apt-get update && apt-get install -y --no-install-recommends \
	libreoffice \
	libreoffice-l10n-zh-cn \
	libreoffice-help-zh-cn \
	&& rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "libreoffice" ]
