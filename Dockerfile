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