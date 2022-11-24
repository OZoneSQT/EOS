myvar=ov2w
date
echo $myvar

person=Sommer
echo person
echo $person

echo "$person"
echo '$person'
echo \$person

unset person
echo person
echo $person

readonly myhorse=horse
echo $myhorse
myhorse=notmyhorse
echo $myhorse
