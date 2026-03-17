#!/bin/bash
# Stop Flask app if running
if pgrep -f "python.*app.py" > /dev/null; then
    pkill -f "python.*app.py"
    echo "Flask app stopped successfully"
else
    echo "Flask app was not running — nothing to stop. Skipping."
fi
# exit 0 is CRITICAL — tells CodeDeploy everything is fine
exit 0
