echo Which interface\'s MAC Address do you want to change ?
read inputInterface

sudo service NetworkManager stop
sudo ifconfig $inputInterface down
sudo macchanger -r $inputInterface
sudo ifconfig $inputInterface up
sudo service NetworkManager start
