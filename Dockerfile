FROM node:18.18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

ENTRYPOINT [ "usr/local/bin/node" ]

CMD [ "src/index.js"]