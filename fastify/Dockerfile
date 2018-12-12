FROM node:8.5

RUN mkdir -p /app
WORKDIR /app

COPY package.json /app/package.json
RUN npm install

COPY api.js /app/api.js

EXPOSE 80
