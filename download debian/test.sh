echo "Type on, off, heartbeat, blink, or default"
read input

if [ ${input} == "on" ]
then
echo "on mode is selected"

elif [ ${input} == "off" ]
then
echo "off mode is selected"

elif [ ${input} == "heartbeat" ]
then
echo "heartbeat mode is selected"

elif [ ${input} == "blink" ]
then
echo "blink mode is selected"

elif [ ${input} == "default" ]
then
echo "default mode is selected"

else
echo "something went wrong"

fi
