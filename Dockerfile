FROM node:10
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
CMD node node.js
EXPOSE 5001
EXPOSE 5002

FROM mongo
EXPOSE 27020

FROM nginx
WORKDIR /etc/nginx/conf.d
COPY nginx.conf /etc/nginx/conf.d
EXPOSE 3000
