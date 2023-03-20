# Use Debian 11.6 "Bullseye" as base
FROM debian:11.6-slim

# Install extra packages
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        # List Debian packages here
        # Full catalog at: https://packages.debian.org/index
        curl ca-certificates \
    && apt-get clean

# Install Node.js v18 from NodeSource
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs \
    && apt-get clean

# Create a folder for the app
RUN mkdir /app

# Copy the application source in /app
COPY . /app
WORKDIR /app

# Install dependencies and build app
RUN npm ci && npm run build

# Run app
CMD ["node", "./src/index.js"]
