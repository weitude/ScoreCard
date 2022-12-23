

# image寫法參考:
# https://medium.com/dean-lin/%E5%AF%A6%E6%B8%AC%E6%9C%89%E6%95%88-%E6%89%8B%E6%8A%8A%E6%89%8B%E5%B8%B6%E4%BD%A0%E6%B8%9B%E5%B0%91-90-%E7%9A%84-docker-image-%E9%AB%94%E7%A9%8D-10b8e43159ff


# 使用最基礎的 Alpine
FROM alpine:latest

# 自己安裝 Node.js & npm
RUN apk add --no-cache --update nodejs yarn

WORKDIR /usr/src/app

COPY backend/package.json backend/yarn.lock ./
COPY backend/src ./src

RUN yarn install --production

EXPOSE 4000

CMD yarn start:prod