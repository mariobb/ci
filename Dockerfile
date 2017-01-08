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

RUN wget https://raw.githubusercontent.com/composer/getcomposer.org/1b137f8bf6db3e79a38a5bc45324414a6b1f9df2/web/installer -O - -q | php -- --quiet
RUN mv composer.phar /usr/bin/composer
