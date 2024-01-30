# Use a base image with Nginx installed
FROM nginx:alpine

# Copy the application to the Nginx directory
COPY . /usr/share/nginx/html

# Copy the Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose the port Nginx is running on
EXPOSE ${PORT_BACKEND}

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]