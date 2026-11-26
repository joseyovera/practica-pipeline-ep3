FROM node:24-alpine

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install --ignore-scripts

COPY . .

CMD ["npm", "run", "test:unit"]