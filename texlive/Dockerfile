from ubuntu:14.04
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

ADD http://mirror.bjtu.edu.cn/CTAN/systems/texlive/Images/texlive.iso /src/texlive.iso
RUN mount /src/texlive.iso /mnt \
	&& cd /mnt \
	&& ./install-tl -y \
	&& umount /mnt

CMD ["/bin/bash"]

