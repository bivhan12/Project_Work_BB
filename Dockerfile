FROM node:latest
MAINTAINER bivhan
RUN npm install -g express
WORKDIR /usr/src/app
COPY . .
EXPOSE 80
CMD ["node", "app.js"]
