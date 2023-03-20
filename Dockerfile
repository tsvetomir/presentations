# Use Debian 11.6 "Bullseye" as base
FROM debian:11.6-slim

# Install extra packages
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        # List Debian packages here
        # Full catalog at: https://packages.debian.org/index
        nodejs npm \
    && apt-get clean

# Create a folder for the app
RUN mkdir /app

# Copy the application source in /app
COPY . /app
WORKDIR /app

# Print debug info
RUN node --version && npm --version

# Install dependencies and build app
RUN npm ci && npm run build

# Run app
CMD ["node", "index.js"]
