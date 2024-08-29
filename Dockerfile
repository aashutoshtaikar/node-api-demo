# Use the official Node.js image as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /home/app


# Copy the rest of the application code
COPY . .

# Install dependencies
RUN npm install

# Expose the application port (change 3000 if your app uses a different port)
EXPOSE 8080


# # Command to run migrations, seed the database, and start the application
# RUN bash -c ./wait-for-it.sh db:3306 -- npx knex migrate:latest && npx knex seed:run 

# ENTRYPOINT [ "npm", "start" ]
