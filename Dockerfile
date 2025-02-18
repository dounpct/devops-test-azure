FROM node:12

RUN echo "Asia/Bangkok" > /etc/timezone
ENV TZ=Asia/Bangkok

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

USER node

EXPOSE 3000

CMD [ "npm", "run", "start"]