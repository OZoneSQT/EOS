echo "Type led1, led2 or led3"
read input

if [ ${input} == "led1" ]
then
echo "led1 is selected"
elif [ ${input} == "led2" ]
then
echo "led2 is selected"
elif [ ${input} == "led3" ]
then
echo "led3 is selected"
else
echo "something went wrong"
fi
