FROM resin/rpi-raspbian:jessie-20160831
MAINTAINER Alexander Tarlinder <a@tarlinder.net>

RUN apt-get update && \
    apt-get -qy install curl ca-certificates oracle-java8-jdk git openssh-client unzip

# Jenkins
RUN mkdir -p /usr/local/jenkins/plugins
COPY jenkins.war /usr/local/jenkins
ENV JENKINS_HOME /usr/local/jenkins
COPY plugins/* /usr/local/jenkins/plugins/

EXPOSE 8080
WORKDIR /usr/local/jenkins
ENTRYPOINT ["java", "-jar", "-Djenkins.install.runSetupWizard=false", "-Xms128m" ,"-Xmx512m", "jenkins.war"]

