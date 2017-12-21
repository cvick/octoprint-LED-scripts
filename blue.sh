#!/bin/bash

# Stops fading.py if it's running
kill $(cat /tmp/fading.pid)

# Sets blue LED pin (24) to 255, turns off green (22) and red (17) LED pins

pigs p 17 0

pigs p 22 0

pigs p 24 255

