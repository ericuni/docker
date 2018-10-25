FROM ubuntu:18.04
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

RUN apt-get update

# basic tool
## pstree in psmisc
RUN apt-get install -y --no-install-recommends vim tmux git ssh net-tools locate wget file psmisc apt-utils tree \
	&& ulimit -c unlimited

# C famliy
RUN apt-get install -y --no-install-recommends build-essential gcc g++ clang gdb make cmake \
	libev-dev libevent-dev libjsoncpp-dev libssl-dev \
	libcurl4-openssl-dev

# Google
RUN apt-get install -y --no-install-recommends protobuf-compiler libprotobuf-dev libprotoc-dev \
	libgoogle-perftools-dev libgoogle-glog-dev libgflags-dev libleveldb-dev

# brpc
ADD https://codeload.github.com/brpc/brpc/zip/master brpc.zip
RUN apt-get install -y unzip \
	&& unzip brpc.zip \
	&& cd brpc-master && sh config_brpc.sh --headers=/usr/include --libs=/usr/lib --with-glog && make -j 8 \
	&& cp -rf output/include/* /usr/local/include \
	&& cp -rf output/lib/* /usr/local/lib \
	&& ldconfig \
	&& rm -rf brpc-master brpc.zip \
	&& apt-get purge -y unzip

# blade
ADD https://codeload.github.com/chen3feng/typhoon-blade/zip/master /opt/typhoon-blade.zip
RUN apt-get install -y --no-install-recommends scons ninja-build unzip \
	&& cd /opt && unzip typhoon-blade.zip && cd typhoon-blade-master && sh ./install \
	&& cd /opt && rm typhoon-blade.zip && apt-get purge -y unzip


# Python
## DEBIAN_FRONTEND=noninteractive http://blog.sina.com.cn/s/blog_72ef7bea0102vvvf.html
## run `dpkg-reconfigure tzdata` to change default time zone(interactive mode)
## RUN DEBIAN_FRONTEND=noninteractive \
## 	apt-get install -y --no-install-recommends \
## 	python2.7 python-dev \
## 	python-numpy python-scipy python-sympy python-pandas python-matplotlib \
## 	python-tk python-setuptools

# pip
## ADD https://bootstrap.pypa.io/get-pip.py /opt/get-pip.py
## RUN cd /opt && python2 ./get-pip.py

# boost
## RUN apt-get install -y --no-install-recommends libboost-all-dev

# redis(tcl 8.5 or newer needed by Redis test)
## RUN apt-get install -y --no-install-recommends redis-server redis-tools libhiredis-dev tcl8.6
## EXPOSE 6379

# tensorflow need pip version 8.1 or later
## RUN pip2 install tensorflow

# sklearn
## RUN pip2 install scikit-learn

# spider
## RUN pip2 install beautifulsoup4

# RabbitMQ
## RUN apt-get install -y --no-install-recommends rabbitmq-server && pip2 install pika

# R
## RUN apt-get install -y --no-install-recommends r-base r-base-dev r-cran-ggplot2

# mpi
## RUN apt-get install -y --no-install-recommends mpich

# caffe
# FIXME: use ARG instead of ENV once DockerHub supports this
# https://github.com/docker/hub-feedback/issues/460
## RUN apt-get install -y --no-install-recommends libatlas-base-dev libhdf5-serial-dev libleveldb-dev liblmdb-dev libopencv-dev libsnappy-dev
## ENV CAFFE_ROOT=/opt/caffe
## WORKDIR $CAFFE_ROOT
## ENV CLONE_TAG=1.0
## RUN git clone -b ${CLONE_TAG} --depth 1 https://github.com/BVLC/caffe.git . \
##     && pip install --upgrade pip \
##     && cd python && for req in $(cat requirements.txt) pydot; do pip install $req; done && cd - \
##     && mkdir build && cd build && cmake -DCPU_ONLY=1 .. && make -j"$(nproc)"
## ENV PYCAFFE_ROOT $CAFFE_ROOT/python
## ENV PYTHONPATH $PYCAFFE_ROOT:$PYTHONPATH
## ENV PATH $CAFFE_ROOT/build/tools:$PYCAFFE_ROOT:$PATH
## RUN echo "$CAFFE_ROOT/build/lib" >> /etc/ld.so.conf.d/caffe.conf && ldconfig

