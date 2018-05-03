# version: 0.0.2
FROM ubuntu:16.04
MAINTAINER reqsun
RUN apt-get update
RUN apt-get install -y python-pip
RUN pip install shadowsocks
RUN cp ./start-ssr.sh /etc/init.d/start-ssr.sh
RUN cd /etc/init.d
RUN chmod +x start-ssr.sh
RUN update-rc.d start-ssr.sh defaults
EXPOSE 443