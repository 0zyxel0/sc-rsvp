# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Set the working directory to /usr/share/nginx/html (default location where Nginx serves files)
WORKDIR /usr/share/nginx/html

# Remove the default nginx index.html
RUN rm -f /usr/share/nginx/html/*

# Copy your HTML file into the Nginx container's html directory
COPY ./index.html /usr/share/nginx/html/index.html

# Expose port 80 for the container
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
