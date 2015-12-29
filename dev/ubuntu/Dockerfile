## docker run -it
## 	-v /etc/localtime:/etc/localtime:ro
## 	-v /tmp/.X11-unix:/tmp/.X11-unix
## 	-e DISPLAY=unix$DISPLAY
## 	-e GDK_SCALE
## 	-e GDK_DPI_SCALE
## 	-v $HOME:/root
## 	--name dev
## 	ubuntu:dev

FROM ubuntu:14.04
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

CMD ["/bin/bash"]

## vim
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.bashrc /root/.bashrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.vimrc /root/.vimrc
RUN apt-get update && apt-get install -y --no-install-recommends \
		vim \
	&& rm -rf /var/lib/apt/lists/*

## C famliy
RUN apt-get update && apt-get install -y --no-install-recommends \
		gcc g++ clang \
	&& rm -rf /var/lib/apt/lists/*

## Python
RUN apt-get update && apt-get install -y --no-install-recommends \
		python-numpy python-scipy python-sympy \
		python-matplotlib \
	&& rm -rf /var/lib/apt/lists/*

## tcl
RUN apt-get update && apt-get install -y --no-install-recommends \
		tcl8.6 \
	&& rm -rf /var/lib/apt/lists/*

