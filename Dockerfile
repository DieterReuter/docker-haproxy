FROM ubuntu:14.04
MAINTAINER Dieter Reuter <dieter.reuter@me.com>

# install HAProxy
RUN apt-get update && \
    apt-get install -y haproxy

# add specific files
ADD conf/haproxy.cfg /etc/haproxy/haproxy.cfg
ADD bin/haproxy-start.sh /haproxy-start.sh

# define mountable directories
VOLUME ["/haproxy-override"]

# define working directory
WORKDIR /etc/haproxy

# run command
#CMD ["/bin/bash", "/haproxy-start"]
CMD ["/haproxy-start.sh"]

# expose ports
EXPOSE 80 443

