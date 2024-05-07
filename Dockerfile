# Use Node.js version 20 as base image
FROM node:20

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 3 000
EXPOSE 3000:3000

# Command to run the application
CMD ["node", "app.js"]
