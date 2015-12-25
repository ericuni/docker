FROM ubuntu:14.04
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

RUN add-apt-repository ppa:wiznote-team \
	&& apt-get update \
	&& apt-get install -y wiznote \
	&& rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "WizNote" ]

