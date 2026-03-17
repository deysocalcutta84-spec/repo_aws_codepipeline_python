#!/bin/bash
cd /home/ec2-user/myapp

# Start Flask app in background using nohup
# nohup = keep running even after terminal closes
# & = run in background
# Logs go to /var/log/flask-app.log
sudo nohup python3 app.py > /var/log/flask-app.log 2>&1 &

# Wait 3 seconds for app to start
sleep 3

# Verify Flask started successfully
if pgrep -f "python.*app.py" > /dev/null; then
    echo "Flask app started successfully!"
    exit 0
else
    echo "FAILED to start Flask app! Check /var/log/flask-app.log"
    exit 1
fi
