#!/bin/bash

# Start fading.py and runs it in the background

nohup python fading.py > /dev/null 2>&1 &

# Greps for the process running the script and writes it to a file
# This is so the stop script can kill the process

pgrep -f 'python fading.py' > /tmp/fading.pid
