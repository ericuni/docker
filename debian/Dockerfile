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

FROM debian:jessie
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

ENTRYPOINT [ "/bin/bash" ]
