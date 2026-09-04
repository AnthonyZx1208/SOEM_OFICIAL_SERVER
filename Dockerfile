FROM payara/micro:6.2025.11-jdk17

COPY ["SoemOficial_Teriminadisimo.war", "/opt/payara/deployments/ROOT.war"]

EXPOSE 8080
