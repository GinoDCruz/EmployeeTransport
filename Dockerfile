# STAGE 1: Compile and Build angular application
#Using official node image as the base image
FROM node: latest as build
# Setting up the working directory
WORKDIR / usr / local / app
# Add the Source code to app
COPY. / /usr/local / app / # Install all dependencies
RUN npm install
# Generate the Build of the angular application
RUN npm run build
# STAGE 2: Serving the application using NGINX server
# Using official nginx image as the base image
FROM nginx: latest
# Copy compiled file from build stage
COPY– from = build / usr / local / app / dist / sample - app / usr / share / nginx / html
# Expose Port 80
EXPOSE 80
