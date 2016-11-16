FROM resin/rpi-raspbian:jessie-20161102
MAINTAINER Alexander Tarlinder <a@tarlinder.net>

RUN apt-get update && \
    apt-get -qy install \
	ca-certificates \ 
	curl \
	git \ 
	oracle-java8-jdk \
	wget

RUN curl -fsSL test.docker.com | sh

# Jenkins
RUN mkdir -p /usr/local/jenkins/plugins
COPY jenkins.war /usr/local/jenkins
ENV JENKINS_HOME /usr/local/jenkins
COPY plugins/* /usr/local/jenkins/plugins/

COPY docker_entrypoint.sh /

EXPOSE 8080
WORKDIR /usr/local/jenkins
ENTRYPOINT ["/docker_entrypoint.sh"]

