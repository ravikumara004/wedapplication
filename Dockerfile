FROM tomcat:8.0.20-jre8
# Dummy text to test
Copy tomcat-users.xml /usr/local/tomcat/conf/ 
COPY target/maven-web-application*.war /usr/local/tomcat/webapps/java-web-app.war
RUN chmod -R 777 /usr/local/tomcat/conf
RUN chmod -R 777 /usr/local/tomcat/webapps
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
