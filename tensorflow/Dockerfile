FROM index.tenxcloud.com/ericuni/base:latest

## Python 2
RUN apt-get install -y --no-install-recommends \
	python2.7 \
	python-pip

RUN pip2 install \
	tensorflow

CMD ["/bin/bash"]

