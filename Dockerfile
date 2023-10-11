# Use the official Nginx image as the base image
FROM nginx:alpine

# # Remove the default Nginx configuration
# RUN rm /etc/nginx/conf.d/default.conf

# Copy your project files into the container
COPY ./index.html /usr/share/nginx/html

# Expose port 80 for Nginx
EXPOSE 8080

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
