FROM node:latest

COPY ./ /run/APFT/

WORKDIR /run/APFT

RUN npm install
RUN npm run build-css

CMD npm start
