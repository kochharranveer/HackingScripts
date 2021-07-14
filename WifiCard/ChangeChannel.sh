echo Which interface\'s channel do you want to change ?
read inputInterface

echo What channel do you want to change into ?
read inputChannel

sudo service NetworkManager stop
sudo ifconfig $inputInterface down
sudo iwconfig $inputInterface channel $inputChannel
sudo ifconfig $inputInterface up
sudo service NetworkManager start
