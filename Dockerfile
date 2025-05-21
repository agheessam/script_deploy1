# Start from the official Ubuntu base image
FROM ubuntu:latest

# Set a working directory
WORKDIR /app

# Install packages, e.g., Apache
RUN apt-get update && apt-get install -y apache2

#add the file to directory
ADD . /var/www/html

# Expose port 80
EXPOSE 80

# Start the Apache service
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]