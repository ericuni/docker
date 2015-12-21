FROM ubuntu:14.04
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>
## tag: 14.04

RUN apt-get update && apt-get install -y \
	vim \
	gcc g++ clang \
	python-pip \
	python-numpy python-scipy \
	python-matplotlib python-matplotlib-data python-matplotlib-doc \
	&& rm -rf /var/lib/apt/lists/*

ADD https://github.com/ericuni/note/blob/master/conf/.bashrc /root
ADD https://github.com/ericuni/note/blob/master/conf/.vimrc /root
## tag: dev

