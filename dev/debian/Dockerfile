FROM debian:jessie
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

RUN apt-get update

## tool
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.bashrc /root/.bashrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.vimrc /root/.vimrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.tmux.conf /root/.tmux.conf
RUN apt-get install -y --no-install-recommends \
		vim \
		tmux

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
		python-tk
RUN apt-get install -y --no-install-recommends \
		python-pip
RUN pip install asstosrt

## tcl
RUN apt-get install -y --no-install-recommends \
		tcl8.6

## Google Protocol Buffer
RUN apt-get install -y --no-install-recommends \
	protobuf-compiler \
	python-protobuf \
	libprotobuf-dev

