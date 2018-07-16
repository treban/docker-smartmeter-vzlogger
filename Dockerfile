##################################################################
# vzlogger docker file
# VERSION               0.1
##################################################################

# base image
FROM debian:stable

LABEL Description="vzlogger docker image" Maintainer="trebankosta@gmail.com" Version="0.1"

RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install sudo build-essential git-core cmake pkg-config subversion  \
    libcurl4-openssl-dev libgnutls28-dev libsasl2-dev uuid-dev \
    libtool libssl-dev libgcrypt20-dev libmicrohttpd-dev libltdl-dev \
    libjson-c-dev libleptonica-dev libunistring-dev dh-autoreconf

RUN mkdir /cfg && cd /tmp && \
    git clone https://github.com/treban/vzlogger.git && \
    cd vzlogger && \
    bash ./install.sh

####### volume #######
VOLUME ["/cfg"]

CMD /usr/local/bin/vzlogger --config /cfg/vzlogger.conf
