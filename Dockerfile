FROM node:21-alpine

WORKDIR /app

COPY . .

RUN npm i

CMD ["npm","start","--","--host","0.0.0.0","--disable-host-check"]
