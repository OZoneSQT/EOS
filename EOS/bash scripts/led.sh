echo "Welcome to Bastien and Michel's LED controller"
echo "syntax: [LED] [Mode]"
echo "LED to control: led0, led1, led2, led3, all"
echo "Mode options: on, off, heartbeat, blink, default"
read led mode

if [[ ( ${mode} == "on" ) ]]
then
	if [[ ( ${led} == "led0" ) ]]
	then
		cd /sys/class/leds/beaglebone\:green\:usr0/
		echo on > trigger
	elif [[ ( ${led} == "led1" ) ]]
	then
		cd /sys/class/leds/beaglebone\:green\:usr1/
		echo on > trigger
	elif [[ ( ${led} == "led2" ) ]]
	then
		cd /sys/class/leds/beaglebone\:green\:usr2/
		echo on > trigger
	elif [[ ( ${led} == "led3" ) ]]
	then
		cd /sys/class/leds/beaglebone\:green\:usr3/
		echo on > trigger
	elif [[ ( ${led} == "all" ) ]]
	then
		cd /sys/class/leds/beaglebone\:green\:usr0/
		echo on > trigger
		cd
		cd /sys/class/leds/beaglebone\:green\:usr1/
		echo on > trigger
		cd
		cd /sys/class/leds/beaglebone\:green\:usr2/
		echo on > trigger
		cd
		cd /sys/class/leds/beaglebone\:green\:usr3/
		echo on > trigger
	else
		echo "Error in the LED input"
	fi	
elif [[ ${mode} == "off" ]]
then
	if [[ ${led} == "led0" ]]
	then
		cd /sys/class/leds/beaglebone\:green\:usr0/
		echo off > trigger
	elif [[ ${led} == "led1" ]]
	then
		cd /sys/class/leds/beaglebone\:green\:usr1/
		echo off > trigger
	elif [[ ${led} == "led2" ]]
	then
		cd /sys/class/leds/beaglebone\:green\:usr2/
		echo off > trigger
	elif [[ ${led} == "led3" ]]
	then
		cd /sys/class/leds/beaglebone\:green\:usr3/
		echo off > trigger
	elif [[ ${led} == "all" ]]
	then
		cd /sys/class/leds/beaglebone\:green\:usr0/
		echo off > trigger
		cd
		cd /sys/class/leds/beaglebone\:green\:usr1/
		echo off > trigger
		cd
		cd /sys/class/leds/beaglebone\:green\:usr2/
		echo off > trigger
		cd
		cd /sys/class/leds/beaglebone\:green\:usr3/
		echo off > trigger
	else
		echo "Error in the LED input"
	fi
elif [[ ${mode} == "heartbeat" ]]
then
	if [[ ${led} == "led0"
	then
		cd /sys/class/leds/beaglebone\:green\:usr0/
		echo heartbeat > trigger
	elif [[ ${led} == "led1" ]]
	then
		cd /sys/class/leds/beaglebone\:green\:usr1/
		echo heartbeat > trigger
	elif [[ ${led} == "led2" ]]
	then
		cd /sys/class/leds/beaglebone\:green\:usr2/
		echo heartbeat > trigger
	elif [[ ${led} == "led3" ]]
	then
		cd /sys/class/leds/beaglebone\:green\:usr3/
		echo heartbeat > trigger
	elif [[ ${led} == "all" ]]
	then
		cd /sys/class/leds/beaglebone\:green\:usr0/
		echo heartbeat > trigger
		cd
		cd /sys/class/leds/beaglebone\:green\:usr1/
		echo heartbeat > trigger
		cd
		cd /sys/class/leds/beaglebone\:green\:usr2/
		echo heartbeat > trigger
		cd
		cd /sys/class/leds/beaglebone\:green\:usr3/
		echo heartbeat > trigger
	else
		echo "Error in the LED input"
	fi
elif [[ ${mode} == "blink" ]]
then
	echo "Enter blink frequency: "
	read -n hz
	ms=((1000/hz)/2)	#half periode	
	if [[ ${led} == "led0" ]]
	then
		cd /sys/class/leds/beaglebone\:green\:usr0/
		sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off
		sudo echo ms > delay_on | sudo echo ms > delay_off
	elif [[ ${led} == "led1" ]]
	then
		cd /sys/class/leds/beaglebone\:green\:usr1/
		sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off
		sudo echo ms > delay_on | sudo echo ms > delay_off
	elif [[ ${led} == "led2" ]]
	then
		cd /sys/class/leds/beaglebone\:green\:usr2/
		sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off
		sudo echo ms > delay_on | sudo echo ms > delay_off
	elif [[ ${led} == "led3" ]]
	then
		cd /sys/class/leds/beaglebone\:green\:usr3/
		sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off
		sudo echo ms > delay_on | sudo echo ms > delay_off
	elif [[ ${led} == "all" ]]
	then
		cd /sys/class/leds/beaglebone\:green\:usr0/
		sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off
		sudo echo ms > delay_on | sudo echo ms > delay_off
		
		cd
		cd /sys/class/leds/beaglebone\:green\:usr1/
		sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off
		sudo echo ms > delay_on | sudo echo ms > delay_off
		
		cd
		cd /sys/class/leds/beaglebone\:green\:usr2/
		sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off
		sudo echo ms > delay_on | sudo echo ms > delay_off
		
		cd
		cd /sys/class/leds/beaglebone\:green\:usr3/
		sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off
		sudo echo ms > delay_on | sudo echo ms > delay_off
	else
		echo "Error in the LED input"
	fi	
elif [[ ${mode} == "default" ]]
then
	if [[ ${led} == "led0" ]]
	then
		cd /sys/class/leds/beaglebone\:green\:usr0/
		echo heartbeat > trigger
	elif [[ ${led} == "led1" ]]
	then
		cd /sys/class/leds/beaglebone\:green\:usr1/
		echo mmc0 > trigger
	elif [[ ${led} == "led2" ]]
	then
		cd /sys/class/leds/beaglebone\:green\:usr2/
		echo cpu0 > trigger
	elif [[ ${led} == "led3" ]]
	then
		cd /sys/class/leds/beaglebone\:green\:usr3/
		echo mmc1 > trigger
	elif [[ ${led} == "all" ]]
	then
		cd /sys/class/leds/beaglebone\:green\:usr0/
		echo heartbeat > trigger
		
		cd
		cd /sys/class/leds/beaglebone\:green\:usr1/
		echo mmc0 > trigger
		
		cd
		cd /sys/class/leds/beaglebone\:green\:usr2/
		echo cpu0 > trigger
		
		cd
		cd /sys/class/leds/beaglebone\:green\:usr3/
		echo mmc1 > trigger
	else
		echo "Error in the LED input"
	fi
else
	echo "Error in the Mode input"
fi
