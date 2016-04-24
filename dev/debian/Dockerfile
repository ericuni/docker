FROM debian:jessie
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

RUN apt-get update

## tool
RUN apt-get install -y --no-install-recommends \
	vim \
	tmux \
	wget
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.bashrc /root/.bashrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.vimrc /root/.vimrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.tmux.conf /root/.tmux.conf

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
	python-pip \
	tcl8.6
RUN pip install asstosrt

## Google Protocol Buffer
RUN apt-get install -y --no-install-recommends \
	protobuf-compiler \
	python-protobuf \
	libprotobuf-dev

## Apache Thrift
## RUN apt-get install -y --no-install-recommends \
## 	make \
## 	automake \
## 	bison \
## 	flex \
## 	libboost1.55-all-dev \
## 	libevent-dev \
## 	libssl-dev \
## 	git \
## 	libtool \
## 	pkg-config
## RUN apt-get install -y --no-install-recommends \
## 	python-all \
## 	python-all-dev \
## 	python-all-dbg
## RUN wget http://mirror.bit.edu.cn/apache/thrift/0.9.3/thrift-0.9.3.tar.gz \
## 	&& tar zxvf thrift-0.9.3.tar.gz \
## 	&& cd thrift-0.9.3 \
## 	&& ./configure \
## 	&& make \
## 	&& make check \
## 	&& make install

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install openssh-server pwgen
RUN mkdir -p /var/run/sshd \
	&& sed -i "s/UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config \
	&& sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config \
	&& sed -i "s/PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config

EXPOSE 80 22

