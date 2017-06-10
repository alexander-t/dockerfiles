FROM resin/rpi-raspbian:jessie-20170420
MAINTAINER Alexander Tarlinder <a@tarlinder.net>

RUN apt-get update && \
    apt-get -qy install \
	ca-certificates \
	mariadb-server

COPY docker_entrypoint.sh /

EXPOSE 3306
ENTRYPOINT ["/docker_entrypoint.sh"]

