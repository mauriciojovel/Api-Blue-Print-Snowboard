FROM node:alpine
RUN npm install -g snowboard
COPY example.apib /usr/src/app/API.apib
COPY entrypoint.sh /usr/src/app/entrypoint.sh
COPY config.yaml /usr/src/app/config.yaml
RUN chmod 755 /usr/src/app/entrypoint.sh
WORKDIR /usr/src/app
EXPOSE 8087
EXPOSE 8088
ENTRYPOINT "/usr/src/app/entrypoint.sh"
