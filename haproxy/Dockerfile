FROM zaiusinc/base-14.04
MAINTAINER theFed

RUN add-apt-repository ppa:vbernat/haproxy-1.5
RUN apt-get update
RUN apt-get install haproxy

RUN echo  "           "

ADD ./src/ /etc/haproxy/
