FROM ipython/ipython:3.x

MAINTAINER IPython Project <ipython-dev@scipy.org>

## docker run -it|-d -p 443:8888 -e "PASSWORD=123456" debian:tf
## https://127.0.0.1:443, not http

## matplotlib needs python-tk
RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		python-numpy python-scipy python-sympy \
		python-matplotlib python-tk \
	&& rm -rf /var/lib/apt/lists/*

VOLUME /app
WORKDIR /app

EXPOSE 8888

ADD notebook.sh /

CMD ["/notebook.sh"]

