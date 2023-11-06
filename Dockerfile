FROM node:14.21-alpine
WORKDIR /app

COPY package*.json ./

# installing packages
RUN npm install

# copy all files
COPY . .

# build
RUN npm run build

# expose port 3001
EXPOSE 3001

# run the app
CMD [ "npm", "run", "serve" ]
