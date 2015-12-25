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

FROM ubuntu:14.04
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

ADD https://download1.rstudio.org/rstudio-0.99.484-amd64.deb /src/rstudio.deb
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.Rprofile /root/.Rprofile
ADD package.r /src/package.r

RUN echo "deb http://mirror.bjtu.edu.cn/cran/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list \
	&& echo "deb http://mirror.neu.edu.cn/ubuntu/ precise-backports main restricted universe" >> /etc/apt/sources.list \
	&& apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9 \
	&& apt-get update && apt-get install -y \
		r-base \
		r-base-dev \
		libjpeg62 \
		libedit2 \
		libxslt1.1 \
		libxslt1-dev \
		python-libxslt1 \
	&& dpkg -i '/src/rstudio.deb' \
	&& apt-get install -fy \
	&& ln -sf /usr/lib/rstudio/bin/rstudio /usr/bin/rstudio \
	&& Rscript /src/package.r \
	&& rm -rf /src \
	&& rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "rstudio" ]

