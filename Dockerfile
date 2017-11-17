FROM node:8.1.3
RUN mkdir -p /home/node-blog
COPY ./bin /home/node-blog/bin
COPY ./public /home/node-blog/public
COPY ./views /home/node-blog/views
COPY ./routes /home/node-blog/routes
COPY ./package.json /home/node-blog/package.json
COPY ./app.js /home/node-blog/app.js

WORKDIR /home/node-blog

RUN npm --registry https://registry.npm.taobao.org install

EXPOSE 3000

CMD npm run start
