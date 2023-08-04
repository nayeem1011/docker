# Use the official Nginx image as the base image
FROM nginx:latest

# Remove the default Nginx configuration file
#RUN rm /etc/nginx/conf.d/default.conf

# Copy your HTML static files into the Nginx document root
COPY index.html /usr/share/nginx/html

# Expose port 80 for Nginx
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
