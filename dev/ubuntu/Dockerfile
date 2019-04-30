FROM ubuntu:18.04
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

RUN apt-get update
RUN apt-get upgrade -y

# basic tool
## pstree in psmisc
RUN apt-get install -y --no-install-recommends vim git ack \
  ssh net-tools ca-certificates curl wget \
  locate file tree psmisc \
  apt-utils \
  locales-all \
  tmux \
  && ulimit -c unlimited

# C famliy
RUN apt-get install -y --no-install-recommends build-essential gcc-8 g++-8 gdb make cmake \
  libev-dev libevent-dev libjsoncpp-dev libssl-dev \
  libcurl4-openssl-dev \
  && ln -sf /usr/bin/gcc-8 /usr/bin/gcc \
  && ln -sf /usr/bin/g++-8 /usr/bin/g++

# Google
RUN apt-get install -y --no-install-recommends \
  libgoogle-perftools-dev libgoogle-glog-dev libgflags-dev libleveldb-dev \
  && mkdir /opt/pkg && cd /opt/pkg \
  && curl -L https://codeload.github.com/google/googletest/tar.gz/release-1.8.1 | tar xz --strip-components 1 \
  && mkdir bld && cd bld && cmake .. && make -j 8 && make install && cd /opt && rm -rf pkg \
  && mkdir /opt/pkg && cd /opt/pkg \
  && curl -L https://codeload.github.com/google/benchmark/tar.gz/v1.4.1 | tar xz --strip-components 1 \
  && mkdir bld && cd bld && cmake .. && make -j 8 && make install && cd /opt && rm -rf pkg \
  && mkdir /opt/pkg && cd /opt/pkg \
  && curl -L https://codeload.github.com/protocolbuffers/protobuf/tar.gz/v3.7.1 | tar xz --strip-components 1 \
  && cd cmake && mkdir bld && cd bld && cmake .. -Dprotobuf_BUILD_TESTS=OFF && make -j 8 && make install && cd /opt && rm -rf pkg

# blade
RUN apt-get install -y --no-install-recommends scons ninja-build \
  && mkdir /opt/blade && cd /opt/blade && curl -L https://api.github.com/repos/chen3feng/blade-build/tarball | tar xz --strip-components 1

# brpc
RUN mkdir /opt/pkg && cd /opt/pkg && curl -L https://api.github.com/repos/brpc/brpc/tarball | tar xz --strip-components 1 \
  && mkdir bld && cd bld && cmake -DWITH_GLOG=ON .. && make -j 8 && make install && cd /opt && rm -rf pkg

# Java
RUN apt-get install -y --no-install-recommends maven

# Python
## DEBIAN_FRONTEND=noninteractive http://blog.sina.com.cn/s/blog_72ef7bea0102vvvf.html
## run `dpkg-reconfigure tzdata` to change default time zone(interactive mode)
## RUN DEBIAN_FRONTEND=noninteractive \
##   apt-get install -y --no-install-recommends \
##   python2.7 python-dev \
##   python-numpy python-scipy python-sympy python-pandas python-matplotlib \
##   python-tk python-setuptools

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

