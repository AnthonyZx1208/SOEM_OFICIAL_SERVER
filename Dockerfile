FROM payara/micro:6.2025.11-jdk17

# Copia el archivo WAR correcto con el nombre del repositorio
COPY SoemOficial_Teriminadisimo.war /opt/payara/deployments/ROOT.war

# Pasa la variable PORT de Railway a Payara Micro al arrancar
CMD ["sh", "-c", "java -jar /opt/payara/payara-micro.jar --deploy /opt/payara/deployments/ROOT.war --port ${PORT:-8080}"]
