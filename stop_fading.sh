#!/bin/bash

# Prepares the LEDs for next color by stoping fading.py using
# the fading.pid file created when fading.py was started

kill $(cat /tmp/fading.pid)

# Give the process time to close

sleep 3

# When fading.py is stopped, the LEDs stay on whatever color they
# were on when the process was killed. The section below sets each
# LED pin to 0 to turn them off

pigs p 17 0
sleep 0.5
pigs p 22 0
sleep 0.5
pigs p 24 0
