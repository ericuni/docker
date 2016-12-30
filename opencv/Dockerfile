FROM debian:jessie
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

RUN apt-get update
RUN apt-get install -y --no-install-recommends vim
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.bashrc /root/.bashrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.vimrc /root/.vimrc
VOLUME ["/app"]

RUN apt-get install -y --no-install-recommends \
	build-essential \
	cmake libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev \
	python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev

ENV version 2.4.13
## https://codeload.github.com/opencv/opencv_extra/tar.gz/2.4.13.2
ADD https://codeload.github.com/opencv/opencv/tar.gz/${version} ./app/opencv-${version}.tar.gz
RUN cd /app \
	&& tar zxf ./opencv-${version}.tar.gz \
	&& cd ./opencv-${version} \
	&& mkdir ./build \
	&& cd ./build \
	&& cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ./.. \
	&& make -j2 \
	&& make install \
	&& cd /app \
	&& rm -rf ./opencv-${version} ./opencv-${version}.tar.gz

## http://stackoverflow.com/questions/29274638/opencv-libdc1394-error-failed-to-initialize-libdc1394
## RUN ln /dev/null /dev/raw1394

CMD ["/bin/bash"]

