FROM resin/rpi-raspbian:jessie-20161102
MAINTAINER Alexander Tarlinder <a@tarlinder.net>

RUN apt-get update && \
    apt-get dist-upgrade && \
    apt-get -qy install \
        build-essential \
	ca-certificates \
	check \
	cmake \
 	curl \
	git \
	help2man \
	libconfuse-dev \
    	libcurl4-openssl-dev \
    	libftdi-dev \
    	libglib2.0 \
	oracle-java8-jdk \
	wget && \
    curl -fsSL test.docker.com | sh

# Telldus
RUN echo 'deb-src http://download.telldus.com/debian/ stable main' > /etc/apt/sources.list.d/telldus.list && \
    apt-key adv --fetch-keys http://download.telldus.se/debian/telldus-public.key && \
    apt-get update && \
    apt-get build-dep telldus-core && \
    mkdir -p /usr/local/telldus
WORKDIR /usr/local/telldus
RUN apt-get source --compile telldus-core && \
    dpkg --install *.deb

# Jenkins
RUN mkdir -p /usr/local/jenkins/plugins
COPY jenkins.war /usr/local/jenkins
ENV JENKINS_HOME /usr/local/jenkins
COPY plugins/* /usr/local/jenkins/plugins/
COPY docker_entrypoint.sh /

EXPOSE 8080
WORKDIR /usr/local/jenkins
ENTRYPOINT ["/docker_entrypoint.sh"]

