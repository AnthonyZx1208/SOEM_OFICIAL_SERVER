FROM tomcat:10.1-jdk17

# Elimina las apps de ejemplo de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copia tu WAR y lo renombra como ROOT para que corra en la raíz del dominio
COPY target/soem-oficial.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
