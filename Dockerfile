# Usa una imagen base de Java
FROM openjdk:17-jdk-alpine

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo JAR de la aplicación en el contenedor
COPY target/crudproduct-0.0.1-SNAPSHOT.jar crudproduct.jar

# Expone el puerto en el que la aplicación se ejecutará
EXPOSE 8082

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "crudproduct.jar"]
