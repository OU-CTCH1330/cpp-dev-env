# GCC support can be specified at major, minor, or micro version
# (e.g. 8, 8.2 or 8.2.0).
# See https://hub.docker.com/r/library/gcc/ for all supported GCC
# tags from Docker Hub.
# See https://docs.docker.com/samples/library/gcc/ for more on how to use this image
FROM ubuntu:22.04
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install build-essential cmake cppcheck valgrind clang lldb llvm gdb git vim wget expect \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

# COPY . /usr/src/myapp
# WORKDIR /usr/src/myapp

# RUN g++ -o myapp main.cpp

CMD ["bash"]

LABEL Name=ctch Version=0.1
