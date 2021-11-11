#!/bin/bash

curl -L --fail --output /tmp/camunda-webapp-jboss-standalone-7.16.0.war https://downloads.camunda.cloud/release/camunda-bpm/jboss/7.16/camunda-webapp-jboss-standalone-7.16.0.war || exit 2
curl -L --fail --output /tmp/camunda-engine-rest-7.16.0.war https://camunda.jfrog.io/artifactory/camunda-bpm/org/camunda/bpm/camunda-engine-rest/7.16.0/camunda-engine-rest-7.16.0-wildfly.war || exit 2

cd /camunda/bin
./jboss-cli.sh --no-color-output --file=/tmp/camunda-wildfly.cfg || exit 2

rm /tmp/camunda-*.war
rm /tmp/camunda-*.cfg

exit 0
