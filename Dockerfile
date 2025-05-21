# Start from the official Ubuntu base image
FROM ubuntu:latest

# Set a working directory
WORKDIR /app

# Install packages: nginx
RUN apt-get update && apt-get install -y nginx

# Add your website files to nginx's default html directory
ADD . /var/www/html

# Expose port 80
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
