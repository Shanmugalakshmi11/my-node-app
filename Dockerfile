# Use the latest Node.js image
FROM node:latest

# Set environment variable
ENV NAME="Shanmugalakshmi Chandrasekaran"

# Create app directory
WORKDIR /usr/src/app

# Copy the Node.js project into the image
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Run the command
CMD ["sh", "-c", "echo Hello $NAME! && npm start"]
