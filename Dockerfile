# Use an existing image as a base
FROM node:18-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Copy the rest of the code
COPY . .

RUN yarn build

# Expose the port that the app listens on
EXPOSE 8000

# Define the command to run the app
CMD [ "yarn", "start:prod" ]