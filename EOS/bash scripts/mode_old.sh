echo "Type led0, led1, led2 or led3, all"
echo "Type on, off, heartbeat, blink or default"
read led mode

func_on () {
#led
if [ ${led} == "led0" ]
then
echo "led0 is selected"
elif [ ${led} == "led1" ]
then
echo "led1 is selected"
elif [ ${led} == "led2" ]
then
echo "led2 is selected"
elif [ ${led} == "led3" ]
then
echo "led3 is selected"
elif [ ${led} == "all" ]
then
echo "all is selected"
else
echo "something went wrong"
fi
}

func_off () {
#led
if [ ${led} == "led0" ]
then
echo "led0 is selected"
elif [ ${led} == "led1" ]
then
echo "led1 is selected"
elif [ ${led} == "led2" ]
then
echo "led2 is selected"
elif [ ${led} == "led3" ]
then
echo "led3 is selected"
elif [ ${led} == "all" ]
then
echo "all is selected"
else
echo "something went wrong"
fi
}

func_heartbeat () {
#led
if [ ${led} == "led0" ]
then
echo "led0 is selected"
elif [ ${led} == "led1" ]
then
echo "led1 is selected"
elif [ ${led} == "led2" ]
then
echo "led2 is selected"
elif [ ${led} == "led3" ]
then
echo "led3 is selected"
elif [ ${led} == "all" ]
then
echo "all is selected"
else
echo "something went wrong"
fi
}

func_blink () {
#led
if [ ${led} == "led0" ]
then
echo "led0 is selected"
elif [ ${led} == "led1" ]
then
echo "led1 is selected"
elif [ ${led} == "led2" ]
then
echo "led2 is selected"
elif [ ${led} == "led3" ]
then
echo "led3 is selected"
elif [ ${led} == "all" ]
then
echo "all is selected"
else
echo "something went wrong"
fi
}

func_default () {
#led
if [ ${led} == "led0" ]
then
echo "led0 is selected"
elif [ ${led} == "led1" ]
then
echo "led1 is selected"
elif [ ${led} == "led2" ]
then
echo "led2 is selected"
elif [ ${led} == "led3" ]
then
echo "led3 is selected"
elif [ ${led} == "all" ]
then
echo "all is selected"
else
echo "something went wrong"
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