# Use the official Node.js 18-alpine image as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and yarn.lock files
COPY package.json yarn.lock ./

# Install dependencies using Yarn
RUN yarn install

# Copy the rest of the application files into the container
COPY . .

# Build the application
RUN yarn build

# Install serve globally to serve the app
RUN yarn global add serve

# Expose the port that the app will run on
EXPOSE 3000

# Command to start the application with the "serve" tool
CMD ["serve", "-s", "build", "-l", "3000"]

