FROM resin/rpi-raspbian:jessie-20160831
MAINTAINER Alexander Tarlinder <a@tarlinder.net>

RUN apt-get update && \
    apt-get -qy install curl ca-certificates apt-utils build-essential cmake libconfuse-dev libftdi-dev help2man emacs-nox

RUN echo deb-src http://download.telldus.com/debian/ stable main > /etc/apt/sources.list.d/telldus.list && \
    curl http://download.telldus.se/debian/telldus-public.key > /tmp/telldus-public.key && \
    apt-key add /tmp/telldus-public.key && \
    rm /tmp/telldus-public.key
RUN apt-get update && \
    apt-get build-dep telldus-core

RUN mkdir -p /usr/local/telldus
WORKDIR /usr/local/telldus
RUN apt-get source --compile telldus-core && \
    dpkg --install *.deb

ENTRYPOINT ["bash"]

