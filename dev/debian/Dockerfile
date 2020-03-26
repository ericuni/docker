FROM debian:stretch
MAINTAINER Eric Wang <wangchaogo1990@gmail.com>

RUN apt-get update

## basic tool
RUN apt-get install -y --no-install-recommends vim tmux net-tools locate

## C famliy
RUN apt-get install -y --no-install-recommends gcc g++ clang gdb make

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

