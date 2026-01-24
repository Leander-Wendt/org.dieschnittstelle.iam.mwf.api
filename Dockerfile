# Use official Node.js slim image as base
FROM node:22-slim

# Set working directory in container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm i

# Copy application files
COPY webserver.js .
COPY njsimpl/ ./njsimpl/
COPY www/ ./www/
COPY content/ ./content/

# Expose port
EXPOSE 7077

# Start the application
CMD ["node", "webserver.js"]
