FROM camunda/camunda-bpm-platform:wildfly-7.16.0

COPY deployment.sh /camunda/bin/
COPY camunda-wildfly.cfg /tmp/

RUN cd /camunda/bin &&  \
    ./add-user.sh -p admin -u admin -e && \
    rm -rf /camunda/standalone/deployments/* && \    
    ./deployment.sh && \
    echo ... done
