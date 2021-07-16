FROM node:14.17.0-alpine

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package.json ./
COPY yarn.lock ./

RUN yarn --silent

COPY . ./

CMD ["yarn build"]