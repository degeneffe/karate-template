# Use the official image as a parent image.
FROM maven:3.6.3-jdk-11-openj9

# Set the working directory.
WORKDIR /usr/src/app

# Copy the file from your host to your current location.
#ADD . .
COPY . .

# Run the command inside your image filesystem.
#RUN mvn install -DskipTests
RUN mvn -X -am -e -fn test

#COPY --from=build target target

# Add metadata to the image to describe which port the container is listening on at runtime.
#EXPOSE 8080

# Run the specified command within the container.
#CMD [ "npm", "start" ]

# Copy the rest of your app's source code from your host to your image filesystem.
COPY . .
