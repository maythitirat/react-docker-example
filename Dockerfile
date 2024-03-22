# base image
FROM node:16-alpine

# set working directory
WORKDIR /app

# install and cache app dependencies
COPY package*.json .

RUN npm install

COPY . .

# start app
CMD ["npm", "start"]