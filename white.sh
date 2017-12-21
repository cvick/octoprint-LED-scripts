#!/bin/bash

# Stops fading.py if it's running
kill $(cat /tmp/fading.pid)

# Sets all 3 LED pins to white (255)

pigs p 17 255

pigs p 22 255

pigs p 24 255
