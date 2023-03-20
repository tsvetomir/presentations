# Use Node.js 18 image based on Debian 11.6 "Bullseye"
# https://hub.docker.com/_/node
FROM node:18-slim

# Create a folder for the app
RUN mkdir /app

# Copy the application source in /app
COPY . /app
WORKDIR /app

# Install dependencies and build app
RUN npm ci && npm run build

# Configure and run app
ENV APP_PORT=3000
CMD ["node", "./src/index.js"]
