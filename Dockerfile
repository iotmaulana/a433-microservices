# node base image
FROM node:14

# working directory
WORKDIR /app

# copy all files
COPY . .

# environment variabels
ENV NODE_ENV=production DB_HOST=item-db

# install dependencies and run build script
RUN npm install --production --unsafe-perm && npm run build

# expose port
EXPOSE 8080

# start application
CMD [ "npm", "start" ]
