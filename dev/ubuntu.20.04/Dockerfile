FROM ubuntu:20.04

RUN apt-get update

# local setting
RUN export LC_ALL=C \
  && export DEBIAN_FRONTEND=noninteractive \
  && apt-get install -y apt-utils locales-all tzdata \
  && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
  && dpkg-reconfigure --frontend noninteractive tzdata

# basic env
RUN apt-get install -y curl openssl ca-certificates \
  vim git ack fd-find \
  net-tools \
  && ulimit -c unlimited

# C & C++
RUN apt-get install -y build-essential gcc g++ make cmake gdb \
  libev-dev libevent-dev libjsoncpp-dev libssl-dev \
  libcurl4-openssl-dev zlib1g-dev libsnappy-dev

# python
RUN apt-get install -y python2.7 libpython3-dev \
  && ln -sf /usr/bin/python2.7 /usr/bin/python

# Google
RUN apt-get install -y libprotobuf-dev libprotoc-dev protobuf-compiler \
  libgoogle-glog-dev libgflags-dev \
  libgtest-dev libgmock-dev libbenchmark-dev \
  libgoogle-perftools-dev \
  libleveldb-dev

# brpc
RUN mkdir /opt/pkg && cd /opt/pkg \
  && curl -L https://codeload.github.com/apache/incubator-brpc/tar.gz/0.9.7 | tar xz --strip-components 1 \
  && mkdir bld && cd bld && cmake -DWITH_GLOG=ON -DCMAKE_INSTALL_PREFIX=/usr .. && make -j 8 && make install && cd /opt && rm -rf pkg

# blade-build
RUN apt-get install -y ninja-build

# mysql
RUN apt-get install -y mysql-server mysql-client

# redis
RUN apt-get install -y redis
EXPOSE 6379

RUN apt-get install -y thrift-compiler

# ssh
RUN apt install -y openssh-server \
  && echo 'root:123456' | chpasswd \
  && sed -i '/PermitRootLogin prohibit-password/c PermitRootLogin yes' /etc/ssh/sshd_config
EXPOSE 22

