FROM node:12

# Create app directory
WORKDIR /

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
#COPY package*.json ./
#COPY index.js ./

RUN npm install -g proxy
# If you are building your code for production
#RUN npm ci --only=production

# Bundle app source
#COPY . .

EXPOSE 3000
CMD [ "proxy", "-p","3000"]