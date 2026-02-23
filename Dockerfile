# Intentionally vulnerable base image (old + known CVEs)
FROM nginx:1.14-alpine

# Switch to root (bad practice)
USER root

# Install unnecessary and outdated packages (adds CVEs)
RUN apk update && \
    apk add --no-cache bash curl openssl

# Disable security best practices (no non-root user)
# No file permission hardening

# Copy vulnerable webpage
COPY index.html /usr/share/nginx/html/index.html

# Expose HTTP only (no TLS)
EXPOSE 80

# Run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
