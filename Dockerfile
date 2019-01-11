FROM ubuntu:18.04
MAINTAINER developmentteamserenity@fasthosts.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
      curl \
      git \
      jq \
      mysql-client \
      nano \
      software-properties-common \
      tzdata \
      unzip \
      vim \
    && apt-get autoremove --purge -y \
    && add-apt-repository -y ppa:ondrej/php \
    && apt-get purge -y \
      software-properties-common \
    && apt-get autoremove --purge -y \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app/
RUN chown 1000:1000 /app
USER 1000
ENV HOME /tmp

COPY --chown=1000:1000 --from=composer:latest /usr/bin/composer /usr/bin/composer