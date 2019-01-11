FROM ubuntu:18.04
MAINTAINER developmentteamserenity@fasthosts.com

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      curl \
      git \
      jq \
      mysql-client \
      nano \
      software-properties-common \
      tzdata \
      unzip \
      vim \
    && DEBIAN_FRONTEND=noninteractive apt-get autoremove --purge -y \
    && add-apt-repository -y ppa:ondrej/php \
    && DEBIAN_FRONTEND=noninteractive apt-get purge -y \
      software-properties-common \
    && DEBIAN_FRONTEND=noninteractive apt-get autoremove --purge -y \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app/
RUN chown 1000:1000 /app
USER 1000
ENV HOME /tmp

COPY --chown=1000:1000 --from=composer:latest /usr/bin/composer /usr/bin/composer