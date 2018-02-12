FROM node:8.9-alpine
COPY config.js .
COPY package.json .
COPY app.js .
RUN npm install

CMD ["sh", "-c", "node app SuperBowl ${ELASTIC_URL}/tweets/tweet/"]
