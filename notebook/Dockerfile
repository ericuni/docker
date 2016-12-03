FROM ipython/ipython:3.x

MAINTAINER IPython Project <ipython-dev@scipy.org>

## matplotlib needs python-tk
RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		python-numpy python-scipy python-sympy \
		python-matplotlib python-tk \
	&& rm -rf /var/lib/apt/lists/*

VOLUME /notebooks
WORKDIR /notebooks

EXPOSE 8888

ADD notebook.sh /

CMD ["/notebook.sh"]

