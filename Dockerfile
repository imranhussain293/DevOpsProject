FROM tomcat
MAINTAINER imran
Run apt-get update -y && apt-get -y upgrade
COPY /opt/tomcat/apache-tomcat-8.5.38/config/tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY /opt/tomcat/apache-tomcat-8.5.38/webapps/manager/META-INF/context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
EXPOSE 8080
