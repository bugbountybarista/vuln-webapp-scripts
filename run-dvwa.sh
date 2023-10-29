#!/bin/bash

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "Docker is not installed. Please install Docker and try again."
    exit 1
fi

# Variables (customize these for different images)
image_name="sagikazarmark/dvwa"        # Image name 
container_name="dvwa"                  # Container name
port="80"                              # Port 

# Check if the container is already running
if docker ps | grep -q "$container_name"; then
    echo "$container_name container is already running."
else 
    # Pull the Docker image
    echo "Pulling the $image_name Docker image..."
    if ! docker pull "$image_name"; then
        echo "Failed to pull the $image_name Docker image."
        exit 1
    fi

    # Run the container
    echo "Starting the $container_name container..."
    if ! docker run -d -e NODE_ENV=unsafe --restart=on-failure --name "$container_name" -p "$port:80" "$image_name"; then
        echo "Failed to start the $container_name container."
        exit 1
    fi

    echo "$container_name is now running on port $port. Access it via http://localhost:$port."
fi

exit 
