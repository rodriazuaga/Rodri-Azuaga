FROM node

WORKDIR /app

COPY package.json .
COPY package-lock.json .
COPY server.js .
COPY script.js .
COPY index.html .
COPY assets ./assets
COPY style.css .
COPY mediaqueries.css .

RUN npm install

EXPOSE 3000

CMD ["node", "server.js"]

