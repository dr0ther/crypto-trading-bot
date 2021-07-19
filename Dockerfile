FROM node:10

MAINTAINER Daniel Espendiller <daniel@espendiller.net>

# Install build-essential, sqlite in order
RUN apt-get update && apt-get install -y \
    sqlite \
    git \
&& rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app
RUN git clone https://github.com/dr0ther/crypto-trading-bot.git


# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install --production && \
    npm cache clean --force

# Bundle app source
COPY . /usr/src/app

# Apply all patches in app
RUN npm run postinstall

EXPOSE 8080
CMD ["npm", "run", "start"]
