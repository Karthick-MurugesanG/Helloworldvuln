FROM nginx:1.14-alpine
#old nginx → known CVEs

# Run as root (intentional misconfiguration)
USER root

# Copy webpage
COPY index.html /usr/share/nginx/html/index.html

# Expose web port
EXPOSE 80
