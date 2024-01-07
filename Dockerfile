# Use a lightweight image for the final application deployment
FROM adoptopenjdk/openjdk17:alpine-jre

# Set the working directory inside the container
WORKDIR /usr/app

# Copy the built application JAR file into the container
COPY target/myproject-1.0-SNAPSHOT.jar app.jar

# Set the default command to run the application
CMD ["java", "-jar", "app.jar"]