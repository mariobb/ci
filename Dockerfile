FROM alpine:3.3

RUN apk --update upgrade && \
    apk --no-cache add \
    openssh \
    unzip \
    git \
    bash \
    curl \
    ca-certificates \
    wget \
    openssl \
    nodejs \
    php \
    php-phar \
    php-json \
    php-openssl

RUN update-ca-certificates

# Install Ansible 2.2.0.0
RUN apk --no-cache add --repository http://dl-cdn.alpinelinux.org/alpine/v3.5/main ansible

# Install composer
RUN apk --no-cache add --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing composer
