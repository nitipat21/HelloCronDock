FROM node:latest

# Install cron
RUN apt-get update && apt-get install -y cron

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and other necessary files
COPY package*.json ./
RUN npm install

# Copy your app's source code
COPY . .

# Add your cron file
COPY cronjob /etc/cron.d/cronjob
RUN chmod 0644 /etc/cron.d/cronjob
RUN crontab /etc/cron.d/cronjob

# Create the log file to be able to run tail
RUN touch /var/log/cron.log

# Run the command on container startup
CMD cron && tail -f /var/log/cron.log
