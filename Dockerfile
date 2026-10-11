FROM node:10.24.1-buster

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install --frozen-lockfile

COPY . .

EXPOSE 8081

CMD ["yarn", "start", "--host", "0.0.0.0"]
