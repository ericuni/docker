FROM index.tenxcloud.com/ericuni/base:latest

## C famliy
RUN apt-get install -y --no-install-recommends \
	gcc g++ clang \
	libboost-all-dev \
	mpich \
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

CMD ["/bin/bash"]

