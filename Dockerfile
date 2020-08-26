FROM sonarqube:7.9.4-community

RUN set -x \
    && rm -f ${SONARQUBE_HOME}/extensions/plugins/sonar-css-plugin-* \
    && rm -f ${SONARQUBE_HOME}/extensions/plugins/sonar-typescript-plugin-* \
    && rm -f ${SONARQUBE_HOME}/extensions/plugins/sonar-jacoco-plugin-* \
    && rm -f ${SONARQUBE_HOME}/extensions/plugins/sonar-java-plugin-* \
    && rm -f ${SONARQUBE_HOME}/extensions/plugins/sonar-javascript-plugin-*
    
COPY --chown=sonarqube:sonarqube plugins ${SONARQUBE_HOME}/extensions/plugins/
