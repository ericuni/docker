FROM debian:jessie
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

## tool
RUN apt-get install -y --no-install-recommends \
	vim \
	tmux \
	wget
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.bashrc /root/.bashrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.vimrc /root/.vimrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.tmux.conf /root/.tmux.conf

## runtime env
## docker run -d -p 9000:22 --name dev -v ~/git:/root/git debian:dev /usr/sbin/sshd -D
RUN apt-get install -y --no-install-recommends openssh-server \
	&& mkdir -p /var/run/sshd \
	&& sed -i "s/UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config \
	&& sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config \
	&& sed -i "s/PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config \
	&& echo "root:root" | chpasswd
EXPOSE 22
VOLUME ["/app"]

## Python
RUN apt-get install -y --no-install-recommends \
	python3 \
	python3-pip
RUN pip install \
	beautifulsoup4

CMD ["/bin/bash"]

