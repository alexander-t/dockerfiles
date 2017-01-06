FROM resin/rpi-raspbian:jessie-20161102
MAINTAINER Alexander Tarlinder <a@tarlinder.net>

ENV CHECKED_HOST https://matloggen2.herokuapp.com

RUN apt-get update && \
    apt-get -qy install \
	ca-certificates \ 
	curl \
	cron \
	nano && \
    cp /usr/share/zoneinfo/Europe/Stockholm /etc/localtime && \
    echo "*/2 * * * * curl $CHECKED_HOST > /tmp/ping" > /root/crontab && \
    crontab -u root /root/crontab

CMD ["/usr/sbin/cron", "-f"]
