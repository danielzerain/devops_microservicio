# Etapa 1: Compilación
FROM maven:3.9-eclipse-temurin-17 AS builder
WORKDIR /build

# Copiar descriptores para aprovechar cache de dependencias
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copiar código fuente y empaquetar
COPY src ./src
RUN mvn clean package -B -ntp -DskipTests

# Etapa 2: Imagen final de ejecución
FROM eclipse-temurin:17-alpine
WORKDIR /workspace

# Copiar el jar generado desde la etapa builder
COPY --from=builder /build/target/spring-petclinic-rest-*.jar app.jar

EXPOSE 9966
ENTRYPOINT ["java", "-jar", "/workspace/app.jar"]
