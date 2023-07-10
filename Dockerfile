#FROM tomcat:9-jre8-alpine
#
## fixed path for copying
##COPY target/demo-web-0.0.1-SNAPSHOT.jar /opt/tomcat/webapps/demo-web.jar
#COPY target/demo-web-0.0.1-SNAPSHOT.jar /usr/local/tomcat/webapps/demo-web.jar
#
## Routine for me - optional for your casels
#EXPOSE 8080
#
## And run tomcat
#CMD ["catalina.sh", "run"]
##CMD ["java", "-jar", "/app.jar", "--spring.profiles.active=prod"]

FROM openjdk:17-jdk-alpine
VOLUME /tmp
ADD target/demo*.jar /app.jar
EXPOSE 8080
CMD ["java", "-jar", "/app.jar", "--spring.profiles.active=prod"]