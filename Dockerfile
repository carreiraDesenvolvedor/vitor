FROM node:alpine

WORKDIR /usr/app

COPY --chown=node:node package.json ./

RUN yarn 

COPY --chown=node:node . .

RUN chown -R node:node /usr/app

RUN npm install -g nodemon

CMD yarn start
