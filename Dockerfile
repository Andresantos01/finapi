FROM node:18.18-alpine

WORKDIR /app

RUN npm i -g yarn 

COPY package*.json ./

RUN yarn  

COPY . .

EXPOSE 3000

ENTRYPOINT [ "usr/local/bin/node" ]

CMD [ "src/index.js"]