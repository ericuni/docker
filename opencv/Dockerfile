FROM index.tenxcloud.com/ericuni/base:latest

RUN apt-get install -y --no-install-recommends \
	build-essential \
	cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev \
	python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev

ENV version 3.2.0
ADD https://codeload.github.com/opencv/opencv/tar.gz/${version} ./opencv-${version}.tar.gz
RUN tar zxf ./opencv-${version}.tar.gz \
	&& cd ./opencv-${version} \
	&& mkdir ./build \
	&& cd ./build \
	&& cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ./.. \
	&& make -j7 \
	&& make install

## http://stackoverflow.com/questions/29274638/opencv-libdc1394-error-failed-to-initialize-libdc1394
RUN ln /dev/null /dev/raw1394

CMD ["/bin/bash"]

