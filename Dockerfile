FROM node:lts-alpine

RUN yarn globa add http-server

WORKDIR /app

COPY package*.json ./

RUN yarn

COPY . .

EXPOSE 8080

RUN npm run build

CMD ["http-server", "dist"]
