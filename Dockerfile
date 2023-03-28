# Use a Node.js base image
FROM node:14

# Set the working directory to /app
WORKDIR /index

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the application
CMD [ "npm", "start" ]
docker build -t index .

