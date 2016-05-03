FROM debian:jessie
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

RUN apt-get update

## tool
RUN apt-get install -y --no-install-recommends \
	vim \
	tmux \
	git \
	wget
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.bashrc /root/.bashrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.vimrc /root/.vimrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.tmux.conf /root/.tmux.conf

## C famliy
RUN apt-get install -y --no-install-recommends \
	gcc g++ clang \
	gdb \
	make

## Python
RUN apt-get install -y --no-install-recommends \
	python-numpy python-scipy python-sympy \
	python-matplotlib \
	python-tk \
	python-pip \
	tcl8.6

## Google Protocol Buffer
RUN apt-get install -y --no-install-recommends \
	protobuf-compiler \
	python-protobuf \
	libprotobuf-dev

## RabbitMQ
RUN apt-get install -y --no-install-recommends rabbitmq-server \
	&& pip install pika

## runtime env
RUN apt-get install -y openssh-server \
	&& mkdir /var/run/sshd \
	&& echo "root:root" | chpasswd
EXPOSE 22
VOLUME  ["/app"]
WORKDIR /app
CMD ["exec /usr/sbin/sshd -D"]

