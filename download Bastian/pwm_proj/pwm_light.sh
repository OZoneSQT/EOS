#!/bin/bash
# $1 is the intensity percentage of the light

f_help () {
	echo ""
	echo "How to use : $ ./pwm_light [intensity]"
	echo "[intensity]: between 0 and 100, intensity of the light"
	echo ""
}

f_pwm () {
	duty_cycle=$(($1*100000))

	cd /sys/class/pwm/pwmchip1/pwm-1\:1
	echo 10000000 > period
	echo $duty_cycle > duty_cycle
	echo 1 > enable
}


if [[ $1 < 0 || $1 > 100 || $# > 1 ]]
	then
	f_help
else
	f_pwm "$1"
fi
