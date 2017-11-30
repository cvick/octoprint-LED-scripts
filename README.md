# Octoprint Scripts for the GCODE System Commands plugin

These are scripts I use to control LED strips attached to my Raspberry Pi when various events occur while printing. The [GCODE System Commands plugin](https://github.com/kantlivelong/OctoPrint-GCodeSystemCommands) lets you define GCODE values that when triggered while printing run a script you define.

I'm using [pigpio](https://github.com/joan2937/pigpio) to control individual pins connected to each LED channel (R,G,B) for the color changes to indicate status. For example, when the extruder and bed are warming up the lights are red, when the 3D printer is printing the lights are white so the camera attached to the Raspberry Pi can take a timelapse, and when the print finishes and the extruder and bed turn off to cool down the lights are blue. After 2 minutes of cool down the lights fade between colors.

## Sources

The fading.py script is from [popoklopsi](https://github.com/dordnung/raspberrypi-ledstrip). There's a link in the readme to a [tutorial he wrote](https://dordnung.de/raspberrypi-ledstrip/) about how to control an LED strip with a Pi. That's the tutorial I followed. Take note though that the Amazon link to the MOSFETs brings up the wrong MOSFET. It links to IRFZ34N MOSFETs but you need IRLZ34N otherwise the LEDs will not be as bright.
