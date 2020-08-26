FROM sonarqube:7.9.4-community

RUN set -x \
    && rm -f ${SONARQUBE_HOME}/extensions/plugins/sonar-jacoco-plugin-*
    
COPY plugins ${SONARQUBE_HOME}/extensions/plugins/
