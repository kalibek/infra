FROM sonarqube
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
    apt-get install nodejs -y && \
    npm install -g tslint && \
    cd /opt/sonarqube/extensions/plugins && \
    wget https://github.com/Pablissimo/SonarTsPlugin/releases/download/v1.1.0/sonar-typescript-plugin-1.1.0.jar

