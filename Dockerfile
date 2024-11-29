# Using the official NodeJS image as base
FROM node:alpine

# Establish the work directory within the container
WORKDIR /app

# Copy the package.json and package-lock.json file. This is to install the dependencies before to copy the rest of code
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Copy the source code to the container
COPY . .

# Exposes the port that your app is listening on
EXPOSE 3000

# Command to execute the React application in dev mode
CMD ["npm", "start"]