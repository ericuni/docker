FROM index.tenxcloud.com/ericuni/base:latest

## Python
RUN apt-get install -y --no-install-recommends \
	python3 \
	python3-pip

RUN pip3 install \
	beautifulsoup4 \
	selenium

## phantomjs relies on fontconfig
RUN apt-get install -y --no-install-recommends \
		fontconfig \
		bzip2 \
		wget \
	&& wget --no-check-certificate "https://drive.google.com/open?id=0B4-_w-u7UzjWak9OektJeFNmODA" -O - | tar jxv \
	&& mv phantomjs-2.1.1-linux-x86_64 phantomjs \
	&& apt-get purge -y bzip2 wget \
	&& rm -rf phantomjs.tar.bz2

## 	&& wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 -O - | tar jxv \
CMD ["/bin/bash"]

