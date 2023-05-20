FROM ubuntu:23.04
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install build-essential g++-13 cmake cppcheck valgrind clang lldb llvm gdb git vim wget expect sqlite3 libsqlite3-dev \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-12 12 \
        --slave /usr/bin/g++ g++ /usr/bin/g++-12 \
        --slave /usr/bin/gcc-ar gcc-ar /usr/bin/gcc-ar-12 \
        --slave /usr/bin/gcc-nm gcc-nm /usr/bin/gcc-nm-12 \
        --slave /usr/bin/gcc-ranlib gcc-ranlib /usr/bin/gcc-ranlib-12 \
        --slave /usr/bin/gcov gcov /usr/bin/gcov-12 \
        --slave /usr/bin/gcov-dump gcov-dump /usr/bin/gcov-dump-12 \
        --slave /usr/bin/gcov-tool gcov-tool /usr/bin/gcov-tool-12

RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-13 13 \
        --slave /usr/bin/g++ g++ /usr/bin/g++-13 \
        --slave /usr/bin/gcc-ar gcc-ar /usr/bin/gcc-ar-13 \
        --slave /usr/bin/gcc-nm gcc-nm /usr/bin/gcc-nm-13 \
        --slave /usr/bin/gcc-ranlib gcc-ranlib /usr/bin/gcc-ranlib-13 \
        --slave /usr/bin/gcov gcov /usr/bin/gcov-13 \
        --slave /usr/bin/gcov-dump gcov-dump /usr/bin/gcov-dump-13 \
        --slave /usr/bin/gcov-tool gcov-tool /usr/bin/gcov-tool-13    

CMD ["bash"]

LABEL Name=ctch Version=0.8
