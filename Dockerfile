# Use the latest Ubuntu as the base image
FROM ubuntu:latest

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Update package manager and install dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    curl \
    ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# Expose port 10000
EXPOSE 10000

# Run the command to set up and start the server
CMD curl -sSf https://sshx.io/get | sh -s run
