FROM tomcat:9.0
EXPOSE 9090
COPY target/*.war /usr/local/tomcat/webapps/app.war
CMD ["catalina.sh","run"]
