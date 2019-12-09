FROM jenkins/jenkins:2.207

#install all plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

#set init config
COPY scripts/init.groovy /usr/share/jenkins/ref/init.groovy.d/init.groovy
ADD scripts /usr/share/jenkins/ref/init.groovy.d/scripts
