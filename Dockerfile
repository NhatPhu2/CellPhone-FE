FROM node:16

WORKDIR /app

COPY ./package.json /app
RUN yarn
COPY . .
RUN yarn build

EXPOSE 3000
CMD [ "yarn", "start" ]