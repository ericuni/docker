## docker run -it
## 	-v /etc/localtime:/etc/localtime:ro
## 	-v /tmp/.X11-unix:/tmp/.X11-unix
## 	-e DISPLAY=unix$DISPLAY -e GDK_SCALE -e GDK_DPI_SCALE
## 	-v $HOME:/data/
## 	--name plot

FROM ubuntu:14.04
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>
## tag: 14.04

env LANG=C.UTF-8
RUN echo "deb http://mirror.bjtu.edu.cn/cran/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list \
	&& echo "deb http://mirror.neu.edu.cn/ubuntu/ precise-backports main restricted universe" >> /etc/apt/sources.list \
	&& apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9

RUN apt-get update && apt-get install -y \
	vim \
	gcc g++ clang \
	python-pip \
	python-numpy python-scipy \
	python-matplotlib python-matplotlib-data python-matplotlib-doc \
	r-base r-base-dev \
	&& rm -rf /var/lib/apt/lists/*

# Set default CRAN repo
RUN echo 'options(repos = c(CRAN = "https://cran.rstudio.com/"), download.file.method = "libcurl")' >> /etc/R/Rprofile.site \
	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds \
	&& echo '"\e[5~": history-search-backward' >> /etc/inputrc \
	&& echo '"\e[6~": history-search-backward' >> /etc/inputrc

ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.bashrc /root/.bashrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.vimrc /root/.vimrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.Rprofile /root/.Rprofile

CMD ["/bin/bash"]
## tag: dev

