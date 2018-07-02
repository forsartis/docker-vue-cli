FROM node:carbon-slim

USER node

RUN mkdir /home/node/.npm-global
RUN mkdir /home/node/app
ENV PATH=/home/node/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

RUN npm install -g @vue/cli@3.0.0-rc.3

USER root

WORKDIR /home/node/app
