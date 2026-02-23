FROM ubuntu:16.04

USER root

RUN apt-get update && \
    apt-get install -y \
    openssl \
    bash \
    curl \
    wget \
    apache2

COPY index.html /var/www/html/index.html

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
