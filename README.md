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
Make the script executable

```
chmod +x custom-service.sh
```

## Step 3
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

## Step 4
Move the unit file to /etc/systemd/system (if already not done) and give it permissions:

```
sudo mv custom-service.service /etc/systemd/system/custom-service.service
sudo chmod 644 /etc/systemd/system/custom-service.service
```

## Step 5
Start the service:

```
sudo systemctl start custom-service
```

## Step 6
Check the status of the service:

```
sudo systemctl status custom-service
```

## Step 7
To enable service on machine startup when the system boots use:

```
sudo systemctl enable custom-service
```

## Step 8
To stop and restart service use:

```
sudo systemctl stop custom-service
sudo systemctl restart custom-service
```

## Step 9
View the logs:

```
sudo journalctl -u custom-service
```
