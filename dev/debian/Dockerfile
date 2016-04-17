FROM debian:jessie
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

RUN apt-get update


## tool
RUN apt-get install -y --no-install-recommends \
	vim \
	tmux \
	git
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.bashrc /root/.bashrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.vimrc /root/.vimrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.tmux.conf /root/.tmux.conf

## dev lib and tool
RUN apt-get install -y --no-install-recommends \
	automake \
	bison \
	flex \
	libboost1.55-all-dev \
	libevent-dev \
	libssl-dev \
	libtool \
	pkg-config

## C famliy
RUN apt-get install -y --no-install-recommends \
	gcc g++ clang \
	gdb \
	make
RUN apt-get install -y --no-install-recommends \
	libssl-dev \
	libidn11-dev \
	libldap2-dev \
	libfreetype6-dev \
	libjpeg-dev \
	libtiff5-dev \
	libxml2-dev \
	libbz2-dev \
	libfontconfig1-dev

## Python
RUN apt-get install -y --no-install-recommends \
	python-numpy python-scipy python-sympy \
	python-matplotlib \
	python-tk \
	tcl8.6
RUN apt-get install -y --no-install-recommends \
	python-pip
RUN pip install asstosrt

## Google Protocol Buffer
RUN apt-get install -y --no-install-recommends \
	protobuf-compiler \
	python-protobuf \
	libprotobuf-dev

## Apache Thrift
RUN apt-get install -y --no-install-recommends \
	python-all \
	python-all-dev \
	python-all-dbg

