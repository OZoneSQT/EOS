#!/bin/bash
#
# ver. 3, feedback implimented
# Authors:
# Bastien Durand 329735
# Michel Sommer 273966
#
#
# Variabels could be reduced:
# declare USR=/sys/class/leds/beaglebone\green\:usr
# declare TRIG=/trigger
# read LED
#
# So that:
# echo default_on > $USR$LED$TRIG
#
declare USR0=/sys/class/leds/beaglebone\:green\:usr0/trigger
declare USR1=/sys/class/leds/beaglebone\:green\:usr1/trigger
declare USR2=/sys/class/leds/beaglebone\:green\:usr2/trigger
declare USR3=/sys/class/leds/beaglebone\:green\:usr3/trigger

echo "Welcome to Bastien and Michel's LED controller"
echo "syntax: [LED] [Mode]"
echo "Type led0, led1, led2 or led3, all"
echo "Type on, off, heartbeat, blink or default"
read led mode

func_on () {
#led
	if [ ${led} == "led0" ]
	then
		echo default-on > USR0
	elif [ ${led} == "led1" ]
	then
		echo default-on > USR1
	elif [ ${led} == "led2" ]
	then
		echo default-on > USR2
	elif [ ${led} == "led3" ]
	then
		echo default-on > USR3
	elif [ ${led} == "all" ]
	then
		echo default-on > USR0
		echo default-on > USR1
		echo default-on > USR2
		echo default-on > USR3
	else
		echo "on to something, that went wrong"
	fi
}

func_off () {
#led
	if [ ${led} == "led0" ]
	then
		echo none > USR0
	elif [ ${led} == "led1" ]
	then
		echo none > USR1
	elif [ ${led} == "led2" ]
	then
		echo none > USR2
	elif [ ${led} == "led3" ]
	then
		echo none > USR3
	elif [ ${led} == "all" ]
	then
		echo none > USR0
		echo none > USR1
		echo none > USR2
		echo none > USR3
	else
		echo "something went off the track"
	fi
}

func_heartbeat () {
#led
	if [ ${led} == "led0" ]
	then
		echo heartbeat > USR0
	elif [ ${led} == "led1" ]
	then
		echo heartbeat > USR1
	elif [ ${led} == "led2" ]
	then
		echo heartbeat > USR2
	elif [ ${led} == "led3" ]
	then
		echo heartbeat > USR3
	elif [ ${led} == "all" ]
	then
		echo heartbeat > USR0
		echo heartbeat > USR1
		echo heartbeat > USR2
		echo heartbeat > USR3
	else
		echo "something went wrong, with a heartheat"
	fi
}

func_blink () {
echo -n "Enter frequency in HZ [0-9]: "
read hz
p=1000/$hz
ms=$p/2
#led
	if [ ${led} == "led0" ]
	then
		echo timer > USR0 | sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off | sudo echo $ms > delay_on | sudo echo $ms > delay_off
	elif [ ${led} == "led1" ]
	then
		echo timer > USR1 | sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off | sudo echo $ms > delay_on | sudo echo $ms > delay_off
	elif [ ${led} == "led2" ]
	then
		echo timer > USR2 | sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off | sudo echo $ms > delay_on | sudo echo $ms > delay_off
	elif [ ${led} == "led3" ]
	then
		echo timer > USR3 | sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off | sudo echo $ms > delay_on | sudo echo $ms > delay_off
	elif [ ${led} == "all" ]
	then
		echo timer > USR0 | sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off | sudo echo $ms > delay_on | sudo echo $ms > delay_off
		echo timer > USR1 | sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off | sudo echo $ms > delay_on | sudo echo $ms > delay_off
		echo timer > USR2 | sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off | sudo echo $ms > delay_on | sudo echo $ms > delay_off
		echo timer > USR3 | sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off | sudo echo $ms > delay_on | sudo echo $ms > delay_off
	else
		echo "something went wrong, in a blink"
	fi
}

func_default () {
#led
	if [ ${led} == "led0" ]
	then
		echo heartbeat > USR0
	elif [ ${led} == "led1" ]
	then
		echo mmc0 > USR1
	elif [ ${led} == "led2" ]
	then
		echo cpu0 > USR2
	elif [ ${led} == "led3" ]
	then
		echo mmc1 > USR3
	elif [ ${led} == "all" ]
	then
		echo heartbeat > USR0
		echo mmc0 > USR1
		echo cpu0 > USR2
		echo mmc1 > USR3
	else
		echo "something went wrong, hopefully not as defailt"
	fi
}

func_read () {
read led mode
}

func_help () {
echo "Syntax: [LED] [Mode]"
echo "Type: led0, led1, led2 or led3, all"
echo "Type: on, off, heartbeat, blink or default"
func_reed
}

if [ ${mode} == "--help" ]
then
	func_help
fi

#mode
if [ ${mode} == "on" ]
then
	func_on
elif [ ${mode} == "off" ]
then
	func_off
elif [ ${mode} == "heartbeat" ]
then
	func_heartbeat
elif [ ${mode} == "blink" ]
then
	func_blink
elif [ ${mode} == "default" ]
then
	func_default
else
	echo "something went wrong try; --help"
fi
