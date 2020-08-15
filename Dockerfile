FROM openjdk:8-jdk-alpine

# Create a working directory
WORKDIR /app

# Copy jar file to Docker
COPY target/travelblog-0.0.1-SNAPSHOT.jar /app

# Expose the port
EXPOSE 8000

# Run
ENTRYPOINT ["java", "-jar", "travelblog-0.0.1-SNAPSHOT.jar"]