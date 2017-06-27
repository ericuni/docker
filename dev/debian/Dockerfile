FROM debian:stretch
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

RUN apt-get update

## basic tool
RUN apt-get install -y --no-install-recommends vim tmux net-tools locate

## C famliy
RUN apt-get install -y --no-install-recommends gcc g++ clang gdb make

## Python
RUN apt-get install -y --no-install-recommends \
	python2.7 python-dev \
	python-numpy python-scipy python-sympy python-pandas \
	python-matplotlib python-tk

## R
RUN apt-get update && apt-get install -y --no-install-recommends r-base r-base-dev r-cran-ggplot2

## boost
RUN apt-get install -y --no-install-recommends libboost-all-dev

## Google Protocol Buffer
RUN apt-get install -y --no-install-recommends protobuf-compiler python-protobuf libprotobuf-dev

## redis
RUN apt-get install -y --no-install-recommends redis-server redis-tools libhiredis-dev \
	tcl8.6 ## You need tcl 8.5 or newer in order to run the Redis test
EXPOSE 6379

## mpi
RUN apt-get install -y --no-install-recommends mpich

## pip
ADD https://bootstrap.pypa.io/get-pip.py /get-pip.py
RUN cd / \
	&& python2 ./get-pip.py \
	&& pip2 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n 1 pip2 install -U

## tensorflow need pip version 8.1 or later
RUN pip2 install tensorflow

## sklearn
RUN pip2 install scikit-learn

## spider
RUN pip2 install beautifulsoup4

## RabbitMQ
RUN apt-get install -y --no-install-recommends rabbitmq-server \
	&& pip2 install pika

ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.bashrc /root/.bashrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.vimrc /root/.vimrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.tmux.conf /root/.tmux.conf

VOLUME ["/app"]
CMD ["/bin/bash"]

