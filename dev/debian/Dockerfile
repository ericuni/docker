FROM debian:stretch

RUN apt-get update

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
RUN apt-get install -y --no-install-recommends build-essential gcc-8 g++-8 gdb make cmake \
  libev-dev libevent-dev libjsoncpp-dev libssl-dev \
  libcurl4-openssl-dev zlib1g-dev \
  && ln -sf /usr/bin/gcc-8 /usr/bin/gcc \
  && ln -sf /usr/bin/g++-8 /usr/bin/g++

# Google
RUN apt-get install -y --no-install-recommends \
  libgoogle-perftools-dev libgoogle-glog-dev libgflags-dev libleveldb-dev \
  && mkdir /opt/pkg && cd /opt/pkg \
  && curl -L https://codeload.github.com/google/googletest/tar.gz/release-1.8.1 | tar xz --strip-components 1 \
  && mkdir bld && cd bld && cmake -DCMAKE_INSTALL_PREFIX=/usr .. && make -j 8 && make install && cd /opt && rm -rf pkg \
  && mkdir /opt/pkg && cd /opt/pkg \
  && curl -L https://codeload.github.com/google/benchmark/tar.gz/v1.4.1 | tar xz --strip-components 1 \
  && mkdir bld && cd bld && cmake -DCMAKE_INSTALL_PREFIX=/usr .. && make -j 8 && make install && cd /opt && rm -rf pkg \
  && mkdir /opt/pkg && cd /opt/pkg \
  && curl -L https://codeload.github.com/protocolbuffers/protobuf/tar.gz/v3.6.1 | tar xz --strip-components 1 \
  && cd cmake && mkdir bld && cd bld && cmake -DCMAKE_CXX_FLAGS="${CMAKE_CXX_FLAGS} -fPIC" -Dprotobuf_BUILD_TESTS=OFF -DCMAKE_INSTALL_PREFIX=/usr .. && make -j 8 && make install && cd /opt && rm -rf pkg

## Google Protocol Buffer
## RUN apt-get install -y --no-install-recommends protobuf-compiler python-protobuf libprotobuf-dev

