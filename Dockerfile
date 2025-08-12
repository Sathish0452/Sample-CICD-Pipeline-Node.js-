# Use an official Node.js runtime as base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json first
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the application code
COPY . .

# Expose the port (change if app uses a different one)
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]
