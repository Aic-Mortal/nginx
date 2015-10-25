############################################################
# Dockerfile to build Nginx Installed Containers
# Based on Ubuntu
############################################################
# Set the base image to Ubuntu
FROM ubuntu
# File Author / Maintainer
MAINTAINER Mortal ,aic@live.com
# Install Nginx
# Add application repository URL to the default sources
RUN echo "deb http://archive.ubuntu.com/ubuntu/ raring main universe" >> /etc/apt/sources.list
# Update the repository
RUN apt-get update
# Download and Install Nginx
RUN apt-get install -y nginx
EXPOSE 80
# Set the default command to execute
# when creating a new container
CMD service nginx start
