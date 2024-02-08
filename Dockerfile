FROM node:18.15

# Create app directory
WORKDIR /inspect

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm ci

# Bundle app source
COPY . .

EXPOSE 80
VOLUME /config

CMD [ "/bin/bash", "docker_start.sh" ]
