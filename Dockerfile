# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy your HTML file to the Nginx container's html directory
COPY ./index.html .

# Expose port 80 to make the container accessible from the host
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
