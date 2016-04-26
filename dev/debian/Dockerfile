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

## runtime env
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install openssh-server pwgen
RUN mkdir -p /var/run/sshd \
	&& sed -i "s/UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config \
	&& sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config \
	&& sed -i "s/PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config

ADD set_root_pw.sh /set_root_pw.sh
ADD run.sh /run.sh
RUN chmod +x /*.sh

ENV AUTHORIZED_KEYS **None**
ENV ROOT_PASS tenxcloud

EXPOSE 80 22

VOLUME  ["/app"]
WORKDIR /app

CMD ["/run.sh"]

