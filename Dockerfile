FROM node:20-alpine

# Install pm2
RUN npm install pm2 -g

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

CMD ["npm", "run", "build:dev"]