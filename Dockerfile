FROM centos:7

ENV JAVA_HOME=/opt/java
ENV CATALINA_HOME=/opt/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN yum -y update && \
    yum -y install tar && \
    yum clean all

WORKDIR /opt
ADD SRC/jdk-8u40-linux-x64.tar.gz .
ADD SRC/apache-tomcat-9.0.12.tar.gz . 
RUN ln -s jdk1.8.0_40 java
RUN ln -s apache-tomcat-9.0.12 tomcat

COPY JPetStore/JPetStore.war /opt/tomcat/webapps/

# TODO: fixme UID GID different than root

#EXPOSE 8080 8009 8005
EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]


