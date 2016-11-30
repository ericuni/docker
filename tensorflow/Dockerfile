FROM index.tenxcloud.com/ericuni/base:latest

## Python 2
RUN apt-get install -y --no-install-recommends \
	python2.7 \
	python-dev

## pip
ADD https://bootstrap.pypa.io/get-pip.py ./get-pip.py
RUN python get-pip.py

## tensorflow
RUN pip install \
	tensorflow

CMD ["/bin/bash"]

