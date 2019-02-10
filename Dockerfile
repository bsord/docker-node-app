FROM mhart/alpine-node

# Run as Non-Root
RUN adduser -D -u 1000 appuser \
    && mkdir -p /usr/src/app \
    && chown -R appuser /usr/src/app /usr/lib/node_modules
USER appuser
WORKDIR /usr/src/app

# Install Dependencies
ENV NPM_CONFIG_PREFIX=/usr/src/app/.npm-global
RUN npm i pm2 -g > "/dev/null" 2>&1
COPY package*.json yarn*.json ./
RUN  yarn install --silent

# Bundle Source
COPY . .

# Application Port
EXPOSE 8080

CMD [ "/usr/src/app/.npm-global/lib/node_modules/pm2/bin/pm2-runtime", "server.js" ]
