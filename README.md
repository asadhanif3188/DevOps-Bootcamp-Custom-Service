# DevOps-Bootcamp-Custom-Service

## Step 1
Create bash script, i.e. ```custom-service.sh```:

```
#!/bin/bash

# Start the demo service
while true; do
  # Get the current timestamp
  TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

  # Wait for 5 seconds before the next iteration
  sleep 5
done
```

## Step 2
Create service file, i.e. ```custom-service.service```:

```
[Unit]
Description=Our cutom service 
[Service] 
ExecStart=/bin/usr/custom-service.sh
User=asad
Restart=on-failure
RestartSec=10
[Install]
WantedBy=graphical.target
```

## Step 3

Move the unit file to /etc/systemd/system (if already not done) and give it permissions:

```
sudo mv custom-service.service /etc/systemd/system/custom-service.service
sudo chmod 644 /etc/systemd/system/custom-service.service
```

