# Use official Node.js LTS image
FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if present)
COPY package*.json ./

# Install only production dependencies
RUN npm ci --only=production

# Copy app source code
COPY . .

# Expose the port (must match your app port)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
