# Use the official Node.js image as the base image
FROM node:18.16.1-alpine

# Set the working directory inside the container
WORKDIR /home/vijayshiv/dockerproject/firstproject/app

# Copy package.json and package-lock.json (or yarn.lock) to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm cache clean --force
# RUN npm install


# Copy the rest of the application code to the working directory
COPY . .

# Build the Next.js app for production
# RUN npm run build

# Set the environment variable to production
ENV NODE_ENV=production

# Expose the port on which the Next.js app will run (adjust if necessary)
EXPOSE 3000

# Start the Next.js app
CMD ["npm", "run"]
