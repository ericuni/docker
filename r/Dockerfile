FROM debian:sid
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

RUN apt-get update && apt-get install -y --no-install-recommends \
		r-base \
		r-base-dev \
		r-cran-ggplot2 \
	&& rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "R" ]

