echo -n "Guess an integer: "
read input

if [ $input -lt 5 ]
then
echo "$input is to low"
elif [ $input -eq 5 ]
then
echo "$input match"
elif [ $input -gt  5 ]
then
echo "$input is to high"
else
echo "something went wrong"
fi
