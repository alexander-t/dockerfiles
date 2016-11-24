#!/bin/sh
systemctl enable docker
java -jar -Djenkins.install.runSetupWizard=false -Xms128m -Xmx512m jenkins.war
