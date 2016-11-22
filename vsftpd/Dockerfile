FROM resin/rpi-raspbian:jessie-20160831
MAINTAINER Alexander Tarlinder <a@tarlinder.net>

RUN apt-get update && \
    apt-get -qy install ca-certificates vsftpd

EXPOSE 21

#ENTRYPOINT ["service", "vsftpd", "start"]

