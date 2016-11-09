#!/bin/bash
WORKDIR=`dirname $0`

if [ ! -f "$WORKDIR/jenkins.war" ]; then
    wget -P $WORKDIR http://mirrors.jenkins-ci.org/war-stable/latest/jenkins.war
else 
    echo "$WORKDIR/jenkins.war exists. Skipping download."
fi

if [ ! -d "$WORKDIR/plugins" ]; then
    mkdir "$WORKDIR/plugins"
    sh "$WORKDIR/get_plugins.sh"
else 
    echo "$WORKDIR/plugins exists. Omitting plugin download."
fi

docker build -t tarlinder/jenkins . 
