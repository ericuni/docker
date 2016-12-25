FROM index.tenxcloud.com/ericuni/base:latest

RUN apt-get install -y --no-install-recommends \
	build-essential \
	cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev \
	python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev

ADD https://codeload.github.com/opencv/opencv/tar.gz/3.2.0 ./opencv.tar.gz
RUN tar zxf ./oepncv.tar.gz \
	&& ls -l >&2 \
	&& cd ./opencv-3.2.0 \
	&& mkdir ./build \
	&& cd ./build \
	&& cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ./.. \
	&& make -j7 \
	&& make install

CMD ["/bin/bash"]

