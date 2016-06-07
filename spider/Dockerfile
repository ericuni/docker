FROM index.tenxcloud.com/ericuni/base:latest

## tool
RUN apt-get install -y --no-install-recommends \
	vim \
	tmux \
	wget
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.bashrc /root/.bashrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.vimrc /root/.vimrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.tmux.conf /root/.tmux.conf

## Python
RUN apt-get install -y --no-install-recommends \
	python3 \
	python3-pip
RUN pip install \
	beautifulsoup4

CMD ["/bin/bash"]

