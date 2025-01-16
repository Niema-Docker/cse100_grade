FROM debian:12.2-slim
MAINTAINER Niema Moshiri <niemamoshiri@gmail.com>
RUN apt-get update && \
    apt-get install -y --no-install-recommends g++ gcc gdb make python3 python3-pip valgrind && \
    pip install --break-system-packages --no-cache-dir networkx treeswift && \
    apt-get autoremove -y && \
    apt-get purge -y --auto-remove && \
    rm -rf /var/lib/apt/lists/*
