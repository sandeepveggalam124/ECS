# Use the official httpd image from the Docker Hub
FROM httpd:2.4

# Copy your custom configuration file, if you have one
# COPY my-httpd.conf /usr/local/apache2/conf/httpd.conf

# Copy the custom index.html to the appropriate location in the container
COPY index.html /usr/local/apache2/htdocs/

# Expose port 80 to the outside world
EXPOSE 80

# Start the Apache server
CMD ["httpd-foreground"]
