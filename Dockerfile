FROM 979490057625.dkr.ecr.us-east-1.amazonaws.com/node:10

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci --only=production
COPY . .

EXPOSE 3000
CMD [ "npm", "start" ]
