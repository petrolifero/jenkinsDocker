FROM jenkins/jenkins:2.361

ENV CASC_JENKINS_CONFIG /usr/share/jenkins/ref/configuration
#install all plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.txt --verbose
COPY configuration/ /usr/share/jenkins/ref/configuration/
USER root
RUN mkdir -p /var/lib/jenkins/
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
#set init config
ADD scripts/*.groovy /usr/share/jenkins/ref/init.groovy.d/
