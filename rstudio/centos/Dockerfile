# Run RStudio in a container
#
# docker run -it \
#	-v /tmp/.X11-unix:/tmp/.X11-unix \ # mount the X11 socket
#	-e DISPLAY=unix$DISPLAY \
#	-v $HOME/rscripts:/root/rscripts \
#	--device /dev/dri \
#	--name rstudio \
#	ubuntu:rstudio
#

FROM ericuni/centos:latest
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

ADD https://download1.rstudio.org/rstudio-0.99.491-x86_64.rpm /src/rstudio.rpm
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.Rprofile /root/.Rprofile
ADD package.r /src/package.r

RUN yum install -y R \
	&& yum localinstall -y /src/rstudio.rpm

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8

