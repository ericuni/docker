## docker run -it
## 	-v /etc/localtime:/etc/localtime:ro
## 	-v /tmp/.X11-unix:/tmp/.X11-unix
## 	-e DISPLAY=unix$DISPLAY -e GDK_SCALE -e GDK_DPI_SCALE
## 	-v $HOME:/data/
## 	--name plot

FROM ubuntu:14.04
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>
## tag: 14.04

RUN echo "deb http://mirror.bjtu.edu.cn/cran/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list \
	&& echo "deb http://mirror.neu.edu.cn/ubuntu/ precise-backports main restricted universe" >> /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
	vim \
	gcc g++ clang \
	python-pip \
	python-numpy python-scipy \
	python-matplotlib python-matplotlib-data python-matplotlib-doc \
	r-base r-base-dev littler \
	&& rm -rf /var/lib/apt/lists/*

# Set default CRAN repo
RUN echo 'options(repos = c(CRAN = "https://cran.rstudio.com/"), download.file.method = "libcurl")' >> /etc/R/Rprofile.site \
	&& echo 'source("/etc/R/Rprofile.site")' >> /etc/littler.r \
	&& ln -s /usr/share/doc/littler/examples/install.r /usr/local/bin/install.r \
	&& ln -s /usr/share/doc/littler/examples/install2.r /usr/local/bin/install2.r \
	&& ln -s /usr/share/doc/littler/examples/installGithub.r /usr/local/bin/installGithub.r \
	&& ln -s /usr/share/doc/littler/examples/testInstalled.r /usr/local/bin/testInstalled.r \
	&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds \
	&& echo '"\e[5~": history-search-backward' >> /etc/inputrc \
	&& echo '"\e[6~": history-search-backward' >> /etc/inputrc

ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.bashrc /root/.bashrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.vimrc /root/.vimrc
ADD https://raw.githubusercontent.com/ericuni/note/master/conf/.Rprofile /root/.Rprofile
## tag: dev

