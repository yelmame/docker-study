# Use a lightweight Node.js base image
FROM node:14

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application files
COPY . .

# Expose the port the app runs on
EXPOSE 8090

# Command to run the app
CMD ["node", "app.js"]

