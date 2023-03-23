# Use Node.js 18 image based on Debian
FROM node:18-slim

# Create a folder for the app
RUN mkdir /app
COPY . /app

# Copy the application source in /app
WORKDIR /app

# Install dependencies
RUN npm ci && npm cache clean -f

# Configure and run app
ENV APP_PORT=3000
CMD ["node", "./src/index.js"]



