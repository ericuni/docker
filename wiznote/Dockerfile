FROM ubuntu:14.04
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

ENV LANG C.UTF-8
RUN echo "deb http://ppa.launchpad.net/wiznote-team/ppa/ubuntu trusty main" >> /etc/apt/sources.list \
	&& echo "deb-src http://ppa.launchpad.net/wiznote-team/ppa/ubuntu trusty main" >> /etc/apt/sources.list \
	&& apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 29DBDA512A74C8B8 \
	&& apt-get update && apt-get install -y --no-install-recommends \
		language-pack-zh-hans-base \
		language-pack-zh-hans \
		language-pack-gnome-zh-hans-base \
		language-pack-gnome-zh-hans \
		wiznote \
	&& rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "WizNote" ]

