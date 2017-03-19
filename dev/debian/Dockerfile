FROM debian:jessie
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

RUN apt-get update

## basic tool
RUN apt-get install -y --no-install-recommends vim tmux

## C famliy
RUN apt-get install -y --no-install-recommends gcc g++ clang gdb make

## Python
RUN apt-get install -y --no-install-recommends \
	python2.7 python-dev \
	python-numpy python-scipy python-sympy python-pandas \
	python-matplotlib python-tk
## 	tcl8.6

## R
RUN apt-get update && apt-get install -y --no-install-recommends r-base r-base-dev r-cran-ggplot2

## boost
RUN apt-get install -y --no-install-recommends libboost-all-dev

## Google Protocol Buffer
RUN apt-get install -y --no-install-recommends protobuf-compiler python-protobuf libprotobuf-dev

## redis
RUN apt-get install -y --no-install-recommends redis-server redis-tools
EXPOSE 6379

## mpi
RUN apt-get install -y --no-install-recommends mpich

## pip
ADD https://bootstrap.pypa.io/get-pip.py /get-pip.py
RUN cd / \
	&& python2 ./get-pip.py \
	&& pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n 1 pip install -U

## tensorflow need pip version 8.1 or later
RUN pip2 install tensorflow

## spider
RUN pip2 install beautifulsoup4

## RabbitMQ
RUN apt-get install -y --no-install-recommends rabbitmq-server \
	&& pip2 install pika

## opencv
RUN apt-get install -y --no-install-recommends \
	build-essential \
	cmake libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev \
	python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev
ENV opencv_version 2.4.13
ADD https://codeload.github.com/opencv/opencv/tar.gz/${opencv_version} /opencv-${opencv_version}.tar.gz
RUN cd / \
	&& tar zxf ./opencv-${opencv_version}.tar.gz \
	&& cd ./opencv-${opencv_version} \
	&& mkdir ./build \
	&& cd ./build \
	&& cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ./.. \
	&& make -j2 \
	&& make install \
	&& cd / \
	&& rm -rf ./opencv-${opencv_version} ./opencv-${opencv_version}.tar.gz

ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.bashrc /root/.bashrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.vimrc /root/.vimrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.tmux.conf /root/.tmux.conf

VOLUME ["/app"]
CMD ["/bin/bash"]

