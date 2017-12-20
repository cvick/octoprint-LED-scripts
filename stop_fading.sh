#!/bin/bash

# Prepares the LEDs for next color by stoping fading.py using
# the fading.pid file created when fading.py was started

kill $(cat /tmp/fading.pid)

# Give the process time to close
# Disabled for now because it messes up the timing of gcode
# commands sent to the printer

#sleep 3

# When fading.py is stopped, the LEDs stay on whatever color they
# were on when the process was killed. The section below sets each
# LED pin to 0 to turn them off

pigs p 17 0

pigs p 22 0

pigs p 24 0
