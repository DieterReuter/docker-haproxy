FROM ubuntu:14.04
MAINTAINER Dieter Reuter <dieter.reuter@me.com>

# install HAProxy
RUN apt-get update && \
    apt-get install -y haproxy

EXPORT 80 443

