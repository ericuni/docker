FROM index.tenxcloud.com/ericuni/base:latest

## Python 2
RUN apt-get install -y --no-install-recommends \
	python2.7 \
	python-pip

RUN pip2 install \
	beautifulsoup4

## Python 3
RUN apt-get install -y --no-install-recommends \
	python3 \
	python3-pip

RUN pip3 install \
	beautifulsoup4 \
	selenium

## phantomjs relies on fontconfig
## ADD https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 ./phantomjs.tar.bz2
## RUN apt-get install -y --no-install-recommends \
## 		fontconfig \
## 		bzip2 \
## 	&& tar jxvf phantomjs.tar.bz2 \
## 	&& mv phantomjs-2.1.1-linux-x86_64 phantomjs \
## 	&& apt-get purge -y bzip2 \
## 	&& rm -rf phantomjs.tar.bz2

CMD ["/bin/bash"]

