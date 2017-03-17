FROM debian:jessie
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

RUN apt-get update

RUN apt-get install -y --no-install-recommends \
	vim \
	tmux
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.bashrc /root/.bashrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.vimrc /root/.vimrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.tmux.conf /root/.tmux.conf

VOLUME ["/app"]

## C famliy
RUN apt-get install -y --no-install-recommends \
	gcc g++ clang \
	libboost-all-dev \
	mpich \
	gdb \
	make

## Python
RUN apt-get install -y --no-install-recommends \
	python-numpy python-scipy python-sympy python-pandas \
	python-matplotlib \
	python-tk \
	python-pip \
	tcl8.6

## Google Protocol Buffer
RUN apt-get install -y --no-install-recommends \
	protobuf-compiler \
	python-protobuf \
	libprotobuf-dev

CMD ["/bin/bash"]

