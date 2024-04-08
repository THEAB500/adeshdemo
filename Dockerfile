# Use the latest CentOS image
FROM centos:latest

# Install Apache
RUN yum -y install httpd

# Set default document root
WORKDIR /var/www/html
RUN curl -O http://www.google.com/index.html

# Expose port 80
EXPOSE 80

# Start Apache service
CMD ["httpd", "-D", "FOREGROUND"]

