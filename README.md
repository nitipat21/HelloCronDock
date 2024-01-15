# HelloCronDock

## Overview

`HelloCronDock` is a Node.js application designed to run inside a Docker container with a cron job setup. This application demonstrates how to periodically execute a Node.js script in a containerized environment, making it suitable for tasks like scheduled data processing, routine automation, or any other timed job.

## Prerequisites

- Docker installed on your machine.
- Basic understanding of Docker containerization.
- Node.js and npm installed (for local development and testing, if applicable).

## Project Structure

```
/HelloCronDock
├── Dockerfile         # Docker configuration file
├── package.json       # Node.js project configuration
├── index.js           # Main Node.js script
├── cronjob            # Cron job file defining schedule
├── .gitignore         # Git ignore file
└── README.md          # Documentation file (this file)
```

## Setup and Configuration

1. **Building the Docker Image**:
   Navigate to the project directory and build the Docker image:

   ```bash
   docker build -t HelloCronDock .
   ```

2. **Running the Docker Container**:
   Start the container with the following command:
   ```bash
   docker run -d HelloCronDock
   ```

## Cron Job Configuration

The application is configured to execute the `index.js` script based on the schedule defined in the `cronjob` file. By default, this is set to run at a specific interval (e.g., every minute). Modify the `cronjob` file to change this schedule as needed.

## Checking Logs

To check the application logs for debugging or monitoring purposes, use:

```bash
docker logs [container_id_or_name]
```

Replace `[container_id_or_name]` with the actual ID or name of your Docker container.

## Customization

- **Node.js Script**: Edit `index.js` to perform your desired tasks.
- **Dockerfile**: Update the Dockerfile if your application requires additional dependencies.
- **Cron Schedule**: Adjust the `cronjob` file to change the execution schedule.
