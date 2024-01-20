FROM node:20.11-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

#ENTRYPOINT [ "usr/local/bin/node" ]

CMD [ "npm","start"]
