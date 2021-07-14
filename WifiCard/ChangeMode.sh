echo Which interface\'s mode do you want to change ?
read inputInterface

echo What mode do you want to change into ?
read inputMode

sudo service NetworkManager stop
sudo ifconfig $inputInterface down
sudo iwconfig $inputInterface mode $inputMode
sudo ifconfig $inputInterface up
sudo service NetworkManager start
