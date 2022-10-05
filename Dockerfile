FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

COPY package.json .
RUN npm install --location=global npm@8.13.2 



RUN npm install

COPY . .

CMD ["node", "."]
