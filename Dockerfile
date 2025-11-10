# Use a specific, lightweight OpenJDK image
FROM openjdk:17-jdk-slim

# Copy your JAR file into the image
COPY target/sf-calc.jar sf-calc.jar

# Command to run your JAR
ENTRYPOINT ["java", "-jar", "sf-calc.jar"]
