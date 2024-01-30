# Step 1: Build React App
FROM node:alpine3.18 
WORKDIR /app 
COPY package.json .
RUN npm install
COPY . .
EXPOSE 3000
RUN npm run build
CMD [ "npm","start" ]

