# Use the official Eclipse Temurin base image (OpenJDK successor)
FROM eclipse-temurin:17-jdk-jammy

# Set working directory
WORKDIR /app

# Copy the JAR file into the container
COPY target/sf-calc.jar /app/sf-calc.jar

# Expose app port (if applicable)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "sf-calc.jar"]
