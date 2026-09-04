FROM payara/micro:6.2025.11-jdk17

# Copia tu archivo WAR
COPY SoemOficial_Teriminadisimo.war /opt/payara/deployments/ROOT.war

EXPOSE 8080

# Inicia Payara usando la variable PORT que asigna Railway (si no existe, usa 8080 por defecto)
ENTRYPOINT ["sh", "-c", "java -jar /opt/payara/payara-micro.jar --deploy /opt/payara/deployments/ROOT.war --port ${PORT:-8080}"]
