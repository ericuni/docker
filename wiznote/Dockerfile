FROM ubuntu:14.04
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

RUN echo "deb http://ppa.launchpad.net/wiznote-team/ppa/ubuntu trusty main" >> /etc/apt/sources.list \
	&& echo "deb-src http://ppa.launchpad.net/wiznote-team/ppa/ubuntu trusty main" >> /etc/apt/sources.list \
	&& apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 72D340A3
	&& apt-get update \
	&& apt-get install -y wiznote \
	&& rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "WizNote" ]

