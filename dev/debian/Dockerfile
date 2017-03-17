FROM debian:jessie
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

RUN apt-get update

## basic tool
RUN apt-get install -y --no-install-recommends vim tmux

## C famliy
RUN apt-get install -y --no-install-recommends gcc g++ clang gdb make

## Python
RUN apt-get install -y --no-install-recommends \
	python2.7 python-dev \
	python-numpy python-scipy python-sympy python-pandas python-matplotlib
## 	python-tk \
## 	tcl8.6

## pip
ADD https://bootstrap.pypa.io/get-pip.py ./get-pip.py
RUN python2 get-pip.py

## Google Protocol Buffer
RUN apt-get install -y --no-install-recommends protobuf-compiler python-protobuf libprotobuf-dev

## boost
RUN apt-get install -y --no-install-recommends libboost-all-dev

## mpi
RUN apt-get install -y --no-install-recommends mpich

## redis
RUN apt-get install -y --no-install-recommends redis-server redis-tools
EXPOSE 6379

## tensorflow need pip version 8.1 or later
RUN pip2 install tensorflow

## spider
RUN pip2 install beautifulsoup4

ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.bashrc /root/.bashrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.vimrc /root/.vimrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.tmux.conf /root/.tmux.conf

VOLUME ["/app"]
CMD ["/bin/bash"]

