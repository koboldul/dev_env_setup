#!/bin/sh
 set -e
 set -x
 #sudo docker stop jenkins
 #sudo docker update --restart=no jenkins
 #sudo docker rename jenkins jenkins.bak.$(date +%Y%m%d%H%M)

  sudo docker run -d \
	--restart always \
	-v /vagrant/jenkins_home:/var/jenkins_home \
	--name jenkins \
	-p 8080:8080 -p 50000:50000 \
	--env JAVA_OPTS="-Djavax.net.ssl.trustStore=/var/jenkins_home/cacerts -Djenkins.branch.WorkspaceLocatorImpl.PATH_MAX=20" \
	jenkins/jenkins:lts 

