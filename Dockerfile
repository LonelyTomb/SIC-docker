FROM node:lts-alpine

RUN yarn global add http-server

WORKDIR /app

COPY package*.json ./

RUN yarn

COPY . .

EXPOSE 8080

RUN yarn build

CMD ["http-server", "dist"]
