#!/bin/sh
docker run -ti -v /var/run/docker.sock:/var/run/docker.sock -p 8080:8080 tarlinder/jenkins
