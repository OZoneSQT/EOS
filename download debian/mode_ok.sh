#!/bin/bash
#
# Authors:
# Bastien Durand 329735
# Michel Sommer 273966
#
# $1 is [led], $2 is [mode] and $3 is [periode]
echo "Welcome to Bastien and Michel's LED controller"
echo "syntax: [LED] [Mode]"
echo "Type led0, led1, led2 or led3, all"
echo "Type on, off, heartbeat, blink or default"
read led mode

func_on () {
#led
if [ ${led} == "led0" ]
then
echo default-on > /sys/class/leds/beaglebone\:green\:usr0/trigger
echo "led0 is selected"
elif [ ${led} == "led1" ]
then
echo default-on > /sys/class/leds/beaglebone\:green\:usr1/trigger
echo "led1 is selected"
elif [ ${led} == "led2" ]
then
echo default-on > /sys/class/leds/beaglebone\:green\:usr2/trigger
echo "led2 is selected"
elif [ ${led} == "led3" ]
then
echo default-on > /sys/class/leds/beaglebone\:green\:usr3/trigger
echo "led3 is selected"
elif [ ${led} == "all" ]
then
echo default-on > /sys/class/leds/beaglebone\:green\:usr0/trigger
echo default-on > /sys/class/leds/beaglebone\:green\:usr1/trigger
echo default-on > /sys/class/leds/beaglebone\:green\:usr2/trigger
echo default-on > /sys/class/leds/beaglebone\:green\:usr3/trigger
echo "all is selected"
else
echo "on to something, that went wrong"
fi
}

func_off () {
#led
if [ ${led} == "led0" ]
then
echo none > /sys/class/leds/beaglebone\:green\:usr0/trigger
echo "led0 is selected"
elif [ ${led} == "led1" ]
then
echo none > /sys/class/leds/beaglebone\:green\:usr1/trigger
echo "led1 is selected"
elif [ ${led} == "led2" ]
then
echo none > /sys/class/leds/beaglebone\:green\:usr2/trigger
echo "led2 is selected"
elif [ ${led} == "led3" ]
then
echo none > /sys/class/leds/beaglebone\:green\:usr3/trigger
echo "led3 is selected"
elif [ ${led} == "all" ]
then
echo "all is selected"
echo none > /sys/class/leds/beaglebone\:green\:usr0/trigger
echo none > /sys/class/leds/beaglebone\:green\:usr1/trigger
echo none > /sys/class/leds/beaglebone\:green\:usr2/trigger
echo none > /sys/class/leds/beaglebone\:green\:usr3/trigger
else
echo "something went off the track"
fi
}

func_heartbeat () {
#led
if [ ${led} == "led0" ]
then
echo heartbeat > /sys/class/leds/beaglebone\:green\:usr0/trigger
echo "led0 is selected"
elif [ ${led} == "led1" ]
then
echo heartbeat > /sys/class/leds/beaglebone\:green\:usr1/trigger
echo "led1 is selected"
elif [ ${led} == "led2" ]
then
echo heartbeat > /sys/class/leds/beaglebone\:green\:usr2/trigger
echo "led2 is selected"
elif [ ${led} == "led3" ]
then
echo heartbeat > /sys/class/leds/beaglebone\:green\:usr3/trigger
echo "led3 is selected"
elif [ ${led} == "all" ]
then
echo "all is selected"
echo heartbeat > /sys/class/leds/beaglebone\:green\:usr0/trigger
echo heartbeat > /sys/class/leds/beaglebone\:green\:usr1/trigger
echo heartbeat > /sys/class/leds/beaglebone\:green\:usr2/trigger
echo heartbeat > /sys/class/leds/beaglebone\:green\:usr3/trigger
else
echo "something went wrong, with a heartheat"
fi
}

func_blink () {

echo -n "Enter frequency: "
read hz
p=1000/$hz
ms=$p/2
#led
if [ ${led} == "led0" ]
then
echo timer > /sys/class/leds/beaglebone\:green\:usr0/trigger | sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off | sudo echo $ms > delay_on | sudo echo $ms > delay_off
echo "led0 is selected"
elif [ ${led} == "led1" ]
then
echo timer > /sys/class/leds/beaglebone\:green\:usr1/trigger | sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off | sudo echo $ms > delay_on | sudo echo $ms > delay_off
echo "led1 is selected"
elif [ ${led} == "led2" ]
then
echo timer > /sys/class/leds/beaglebone\:green\:usr2/trigger | sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off | sudo echo $ms > delay_on | sudo echo $ms > delay_off
echo "led2 is selected"
elif [ ${led} == "led3" ]
then
echo timer > /sys/class/leds/beaglebone\:green\:usr3/trigger | sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off | sudo echo $ms > delay_on | sudo echo $ms > delay_off
echo "led3 is selected"
elif [ ${led} == "all" ]
then
echo timer > /sys/class/leds/beaglebone\:green\:usr0/trigger | sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off | sudo echo $ms > delay_on | sudo echo $ms > delay_off
echo timer > /sys/class/leds/beaglebone\:green\:usr1/trigger | sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off | sudo echo $ms > delay_on | sudo echo $ms > delay_off
echo timer > /sys/class/leds/beaglebone\:green\:usr2/trigger | sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off | sudo echo $ms > delay_on | sudo echo $ms > delay_off
echo timer > /sys/class/leds/beaglebone\:green\:usr3/trigger | sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off | sudo echo $ms > delay_on | sudo echo $ms > delay_off
echo "all is selected"
else
echo "something went wrong, in a blink"
fi
}

func_default () {
#led
if [ ${led} == "led0" ]
then
echo heartbeat > /sys/class/leds/beaglebone\:green\:usr0/trigger
echo "led0 is selected"
elif [ ${led} == "led1" ]
then
echo mmc0 > /sys/class/leds/beaglebone\:green\:usr1/trigger
echo "led1 is selected"
elif [ ${led} == "led2" ]
then
echo cpu0 > /sys/class/leds/beaglebone\:green\:usr2/trigger
echo "led2 is selected"
elif [ ${led} == "led3" ]
then
echo mmc1 > /sys/class/leds/beaglebone\:green\:usr3/trigger
echo "led3 is selected"
elif [ ${led} == "all" ]
then
echo heartbeat > /sys/class/leds/beaglebone\:green\:usr0/trigger
echo mmc0 > /sys/class/leds/beaglebone\:green\:usr1/trigger
echo cpu0 > /sys/class/leds/beaglebone\:green\:usr2/trigger
echo mmc1 > /sys/class/leds/beaglebone\:green\:usr3/trigger
echo "all is selected"
else
echo "something went wrong, hopefully not as defailt"
fi
}

#mode
if [ ${mode} == "on" ]
then
echo "on is selected"
func_on
elif [ ${mode} == "off" ]
then
echo "off is selected"
func_off
elif [ ${mode} == "heartbeat" ]
then
echo "heartbeat is selected"
func_heartbeat
elif [ ${mode} == "blink" ]
then
echo "blink is selected"
func_blink
elif [ ${mode} == "default" ]
then
echo "default is selected"
func_default
else
echo "something went wrong"
fi