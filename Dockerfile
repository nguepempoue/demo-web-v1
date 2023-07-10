FROM tomcat

# fixed path for copying
COPY target/demo-web-0.0.1-SNAPSHOT.jar /opt/tomcat/webapps/demo-web.jar

# Routine for me - optional for your casels
EXPOSE 8080

# And run tomcat
RUN chmod +x /opt/tomcat/bin/catalina.sh
CMD ["/opt/tomcat/bin/catalina.sh", "run"]