from ubuntu:14.04
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

ADD http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz /src/texlive
RUN cd /src/texlive \
	&& ./install-tl -y \
	&& rm -rf /src

CMD ["/bin/bash"]

