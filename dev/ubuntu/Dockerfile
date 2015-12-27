## docker run -it
## 	-v /etc/localtime:/etc/localtime:ro
## 	-v /tmp/.X11-unix:/tmp/.X11-unix
## 	-e DISPLAY=unix$DISPLAY
## 	-e GDK_SCALE
## 	-e GDK_DPI_SCALE
## 	-v $HOME:/root
## 	--name dev
## 	ubuntu:dev

FROM ubuntu:14.04
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

ENV LANG C.UTF-8
WORKDIR /root
CMD ["/bin/bash"]

## vim
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.bashrc /root/.bashrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.vimrc /root/.vimrc
RUN apt-get update \
	&& apt-get install -y vim \
	&& rm -rf /var/lib/apt/lists/*

## C famliy
RUN apt-get update \
	&& apt-get install -y gcc g++ clang \
	&& rm -rf /var/lib/apt/lists/*

## Python
RUN apt-get update \
	&& apt-get install -y python-pip \
	python-numpy python-scipy python-sympy \
	python-matplotlib python-matplotlib-data python-matplotlib-doc \
	&& rm -rf /var/lib/apt/lists/*

## R
RUN echo "deb http://mirror.bjtu.edu.cn/cran/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list \
	&& echo "deb http://mirror.neu.edu.cn/ubuntu/ precise-backports main restricted universe" >> /etc/apt/sources.list \
	&& apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
RUN apt-get update \
	&& apt-get install -y r-base r-base-dev \
	&& rm -rf /var/lib/apt/lists/*
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.Rprofile /root/.Rprofile
ADD package.r /src/package.r
RUN Rscript /src/package.r && rm -rf /src

## tcl
RUN apt-get update \
	&& apt-get install -y tcl8.6 \
	&& rm -rf /var/lib/apt/lists/*

