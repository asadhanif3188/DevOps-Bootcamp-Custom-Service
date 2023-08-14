#!/bin/bash

# Start the demo service
while true; do
  # Get the current timestamp
  TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

  # Log the timestamp using logger
  #logger -p local0.notice -t demo-service "Timestamp: $TIMESTAMP"

  # Wait for 5 seconds before the next iteration
  sleep 5
done
