# Use official Node.js runtime as base image
FROM node:18-alpine

# Set working directory inside container
WORKDIR /usr/src/app

# Copy package files first (better layer caching)
COPY package*.json ./

# Install dependencies
RUN npm install --only=production

# Copy app source code
COPY . .

# Expose the app port (default: 3001)
EXPOSE 3001

# Start the app
CMD ["node", "app.js"]

