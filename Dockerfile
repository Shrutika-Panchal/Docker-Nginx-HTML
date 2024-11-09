# Nginx image as the base image
FROM nginx:latest

# Copy the HTML file and Nginx configuration into the container
COPY index.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 for HTTP
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

# nginx starts the Nginx web server.
# The -g flag tells Nginx to process a global configuration directive.
# "daemon off;" ensures that Nginx runs in the foreground instead of detaching, which is required for Docker containers to keep running.