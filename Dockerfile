FROM jenkins/jenkins:2.289.3

#install all plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
USER root
RUN mkdir -p /var/lib/jenkins/
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
#set init config
ADD scripts/*.groovy /usr/share/jenkins/ref/init.groovy.d/
