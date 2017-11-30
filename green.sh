#!/bin/bash

# Sets green LED pin (22) to 255, turns off red (17) and blue (24) LED pins

pigs p 17 0
sleep 0.5
pigs p 22 255
sleep 0.5
pigs p 24 0
