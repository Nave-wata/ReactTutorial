FROM node:16.18.0-slim

WORKDIR /usr/src/app

ENV LANG=C.UTF-8

RUN apt-get update; \
    apt-get install -y --no-install-recommends \
        git \
        openssh-client \
        wget \
    ; \
    apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; \
	apt-get clean; \
	rm -rf /var/lib/apt/lists/*
