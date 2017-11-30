#!/bin/bash

# Sets red LED pin (17) to 255, turns off blue (24) and green (22) pins

pigs p 17 255
sleep 0.5
pigs p 22 0
sleep 0.5
pigs p 24 0

