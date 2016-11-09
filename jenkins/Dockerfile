FROM resin/rpi-raspbian:jessie-20160831
RUN apt-get update && \
    apt-get -qy install curl ca-certificates oracle-java8-jdk git openssh-client unzip

# Jenkins
RUN mkdir -p /usr/local/jenkins/plugins
COPY jenkins.war /usr/local/jenkins
ENV JENKINS_HOME /usr/local/jenkins
COPY plugins/* /usr/local/jenkins/plugins/

# Gradle
ADD gradle-3.1-bin.zip /usr/local
WORKDIR /usr/local
RUN unzip gradle-3.1-bin.zip && rm gradle-3.1-bin.zip
ENV GRADLE_HOME /usr/local/gradle-3.1
ENV PATH $GRADLE_HOME/bin:$PATH

EXPOSE 8080
WORKDIR /usr/local/jenkins
ENTRYPOINT ["java", "-jar", "-Djenkins.install.runSetupWizard=false", "-Xms128m" ,"-Xmx512m", "jenkins.war"]

