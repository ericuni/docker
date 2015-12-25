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
		ca-certificates \
		fcitx-frontend-qt5 \
		fcitx-modules \
		fcitx-module-dbus \
		libedit2 \
		libgl1-mesa-dri \
		libgl1-mesa-glx \
		libgstreamer0.10-0 \
		libgstreamer-plugins-base0.10-0 \
		libjpeg62 \
		libjpeg-dev \
		libjpeg-turbo8 \
		libjpeg-turbo8-dev \
		libpresage1 \
		libpresage-data \
		libqt5core5a \
		libqt5dbus5 \
		libqt5gui5 \
		libqt5network5 \
		libqt5printsupport5 \
		libqt5webkit5 \
		libqt5widgets5 \
		libtiff5 \
		libxcomposite1 \
		libxslt1.1 \
		littler \
		locales \
	&& dpkg -i '/src/rstudio.deb' \
	&& apt-get install -fy \
	&& ln -sf /usr/lib/rstudio/bin/rstudio /usr/bin/rstudio \
	&& Rscript /src/package.r \
	&& rm -rf /src \
	&& rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "rstudio" ]

