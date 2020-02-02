FROM alpine:latest
RUN apk add --no-cache nodejs npm

# create directory for your app
WORKDIR /app

# copy all content to app directory
COPY . /app

#install dependencies
RUN npm install

# define port to be exposed
EXPOSE 9005

# make the container executable
ENTRYPOINT ["node"]
#arguments to entrypoint cmd
CMD ["server.js"]
