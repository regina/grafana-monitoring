#!/bin/bash
# Author: Veronika Klauzova
# Date: 25. January 2024

# function to install Grafana monitoring tool on Raspberry Pi 5
function install_grafana() {
	echo "adding APT key to authenticate packages"
	sudo mkdir -p /etc/apt/keyrings/
	wget -q -O - https://apt.grafana.com/gpg.key | gpg --dearmor | sudo tee /etc/apt/keyrings/grafana.gpg > /dev/null

	echo "adding Grafana package repository"
	echo "deb [signed-by=/etc/apt/keyrings/grafana.gpg] https://apt.grafana.com stable main" | sudo tee /etc/apt/sources.list.d/grafana.list

	echo "updating apt repository list and installing grafana from previously added official grafana repo"
	sudo apt-get update
	sudo apt-get install -y grafana
    
	echo "enabling Grafana server to start after system reboots/boots and starting Grafana server now"
	sudo /bin/systemctl enable grafana-server
	sudo /bin/systemctl start grafana-server
}

# execute code
install_grafana