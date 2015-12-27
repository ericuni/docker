FROM ubuntu:14.04
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

ADD texlive.profile /src/texlive.profile
RUN apt-get update && apt-get install -y wget \
	&& mkdir -p /src \
	&& wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz -O /src/texlive.tar.gz \
	&& cd /src \
	&& tar zxvf texlive.tar.gz \
	&& cd install-tl* \
	&& ./install-tl -profile /src/texlive.profile \
	&& PATH=$PATH:/opt/texlive/2015/bin/x86_64-linux \
	&& rm -rf /src \
	&& apt-get purge -y wget \
	&& apt-get autoremove -y \
	&& rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]

