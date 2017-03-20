FROM debian:jessie
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

RUN apt-get update

ADD https://bootstrap.pypa.io/get-pip.py /get-pip.py
RUN apt-get install -y --no-install-recommends vim tmux \
	&& apt-get install -y --no-install-recommends gcc g++ clang gdb make \
	&& apt-get install -y --no-install-recommends python2.7 python-dev \
		python-numpy python-scipy python-sympy python-pandas \
		python-matplotlib python-tk \
	&& apt-get install -y --no-install-recommends r-base r-base-dev r-cran-ggplot2 \
	&& apt-get install -y --no-install-recommends libboost-all-dev \
	&& apt-get install -y --no-install-recommends protobuf-compiler python-protobuf libprotobuf-dev \
	&& apt-get install -y --no-install-recommends mpich \
	&& cd / \
	&& python2 ./get-pip.py \
	&& pip2 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n 1 pip2 install -U \
	&& pip2 install tensorflow scikit-learn \
	&& pip2 install beautifulsoup4 \
	&& apt-get install -y --no-install-recommends rabbitmq-server \
	&& apt-get install -y --no-install-recommends redis-server redis-tools && pip2 install pika

EXPOSE 6379

ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.bashrc /root/.bashrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.vimrc /root/.vimrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.tmux.conf /root/.tmux.conf

VOLUME ["/app"]
CMD ["/bin/bash"]

