FROM debian:jessie

RUN apt-get update && apt-get install -y \
	fontconfig \
	vim \
	&& rm -rf /var/lib/apt/lists/*

ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.bashrc /root/.bashrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.vimrc /root/.vimrc

## texlive.tar.gz and winfont.tar.gz are too big, they can not be uploaded to git
ADD ./texlive.tar.gz /root/opt
ADD ./winfont.tar.gz /usr/share/fonts/

RUN PATH=$PATH:/root/opt/texlive/2015/bin/x86_64-linux/

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		python-numpy python-scipy python-sympy \
		python-matplotlib \
		python-tk \
	&& rm -rf /var/lib/apt/lists/*
