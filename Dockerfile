FROM node:latest

COPY ./ /run/APFT/

WORKDIR /run/APFT

RUN npm install
RUN npm install -g serve
RUN npm run build-css
RUN npm run build

CMD serve -s build