FROM debian:jessie
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

## vim
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.bashrc /root/.bashrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.vimrc /root/.vimrc
RUN apt-get update && apt-get install -y --no-install-recommends \
		vim \
	&& rm -rf /var/lib/apt/lists/*

## C famliy
RUN apt-get update && apt-get install -y --no-install-recommends \
		gcc g++ clang \
		make \
	&& rm -rf /var/lib/apt/lists/*

## Python
RUN apt-get update && apt-get install -y --no-install-recommends \
		python-numpy python-scipy python-sympy \
		python-matplotlib \
		python-tk \
	&& rm -rf /var/lib/apt/lists/*

## tcl
RUN apt-get update && apt-get install -y --no-install-recommends \
		tcl8.6 \
	&& rm -rf /var/lib/apt/lists/*

