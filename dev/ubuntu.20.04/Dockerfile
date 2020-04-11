FROM ubuntu:20.04

RUN apt-get update

# local setting
RUN export LC_ALL=C \
  && export DEBIAN_FRONTEND=noninteractive \
  && apt-get install -y apt-utils tzdata \
  && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
  && dpkg-reconfigure --frontend noninteractive tzdata

# basic tool
RUN apt-get install -y --no-install-recommends vim git ack \
  ssh net-tools ca-certificates curl wget \
  locate file tree \
  ## pstree
  psmisc \
  apt-utils \
  locales-all \
  && ulimit -c unlimited

# C famliy
RUN apt-get install -y --no-install-recommends build-essential gdb make cmake \
  libev-dev libevent-dev libjsoncpp-dev libssl-dev \
  libcurl4-openssl-dev zlib1g-dev

