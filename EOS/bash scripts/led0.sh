#off
echo none > /sys/class/leds/beaglebone\:green\:usr0/trigger
echo none > /sys/class/leds/beaglebone\:green\:usr1/trigger
echo none > /sys/class/leds/beaglebone\:green\:usr2/trigger
echo none > /sys/class/leds/beaglebone\:green\:usr3/trigger


#on
echo default-on > /sys/class/leds/beaglebone\:green\:usr0/trigger
echo default-on > /sys/class/leds/beaglebone\:green\:usr1/trigger
echo default-on > /sys/class/leds/beaglebone\:green\:usr2/trigger
echo default-on > /sys/class/leds/beaglebone\:green\:usr3/trigger


#heartbeat
echo heartbeat > /sys/class/leds/beaglebone\:green\:usr0/trigger
echo heartbeat > /sys/class/leds/beaglebone\:green\:usr1/trigger
echo heartbeat > /sys/class/leds/beaglebone\:green\:usr2/trigger
echo heartbeat > /sys/class/leds/beaglebone\:green\:usr3/trigger


#blink
echo timer > /sys/class/leds/beaglebone\:green\:usr0/trigger | sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off | sudo echo 100 > delay_on | sudo echo 100 > delay_off
echo timer > /sys/class/leds/beaglebone\:green\:usr1/trigger | sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off | sudo echo 200 > delay_on | sudo echo 200 > delay_off
echo timer > /sys/class/leds/beaglebone\:green\:usr2/trigger | sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off | sudo echo 300 > delay_on | sudo echo 300 > delay_off
echo timer > /sys/class/leds/beaglebone\:green\:usr3/trigger | sudo chmod a+rwx delay_on | sudo chmod a+rwx delay_off | sudo echo 400 > delay_on | sudo echo 400 > delay_off


#default
echo heartbeat > /sys/class/leds/beaglebone\:green\:usr0/trigger
echo mmc0 > /sys/class/leds/beaglebone\:green\:usr1/trigger
echo cpu0 > /sys/class/leds/beaglebone\:green\:usr2/trigger
echo mmc1 > /sys/class/leds/beaglebone\:green\:usr3/trigger