FROM node:10
EXPOSE 8888
ENV NPM_CONFIG_LOGLEVEL info

WORKDIR /app
ADD ./lib /app/lib
ADD ./bin /app/bin
ADD package-lock.json /app
ADD package.json /app
ADD runsauce.sh /app

RUN chmod +x ./bin/runsauce.js
RUN chmod +x runsauce.sh
RUN npm install

ENTRYPOINT ["/app/runsauce.sh"]
