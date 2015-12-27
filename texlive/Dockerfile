FROM debian:jessie
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

RUN apt-get update && apt-get install -y --no-install-recommends \
		texlive \
		texlive-metapost \
		texlive-lang-chinese \
		texlive-lang-cjk \
		texlive-lang-english \
		texlive-lang-french \
	&& rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]

