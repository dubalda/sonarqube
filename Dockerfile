FROM sonarqube:7.9.4-community

RUN -ex \
    && rm -f ${SONARQUBE_HOME}/extensions/plugins/sonar-jacoco-plugin-*
    
COPY plugins ${SONARQUBE_HOME}/extensions/plugins/
