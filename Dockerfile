FROM node:8

ARG VERSION

RUN echo "Building version $VERSION"

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN echo "VERSION=${VERSION}" > .env

EXPOSE 3000

CMD ["npm", "start"]
