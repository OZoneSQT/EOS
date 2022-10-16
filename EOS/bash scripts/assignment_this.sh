#!/bin/bash
#
# Authors:
# Bastien Durand 329735
# Michel Sommer 273966
#
# $1 is [led], $2 is [mode] and $3 is [periode]
echo "Welcome to Bastien and Michel's LED controller"
echo "syntax: [LED] [Mode]"
echo "LED to control: led0, led1, led2, led3, all"
echo "Mode options: on, off, heartbeat, blink, default"
read mode led

if [ ${mode} == "on" ]
then
	echo "on mode selected"
elif [ ${mode} == "off" ]
then
	echo "off mode selected"
elif [ ${mode} == "heartbeat" ]
then
	echo "heartbeat mode selected"
elif [ ${mode} == "blink" ]
then
	echo "blink mode selected"
elif [ ${mode} == "default" ]
then
	echo "default mode selected"
else
	echo "Error in the Mode input"
fi


funct_help () {
	echo ''
	echo "How to use : bash NAME [led] [mode] [periode]"
	echo "[led] : led0, led1, led2, led3, all"
	echo "[mode] : on, off, heartbeat, blink, default"
	echo "[periode] : if [mode] is blink, tell the periode of your blink in ms"
	echo ''
}

funct_help ()