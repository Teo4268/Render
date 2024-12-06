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

# Run the setup command
RUN curl -sSf https://sshx.io/get | sh -s run

# Expose port 10000
EXPOSE 10000

# Keep the container running
CMD ["tail", "-f", "/dev/null"]
