# Grafana Monitoring

## How to install Grafana on Raspberry Pi 5
1. Clone this Grafana github repository

``` git clone https://github.com/veronikaklauzova/Grafana.git```

2. Change working directory

``` cd Grafana/Install-Grafana```

3. Execute bash script that installs all dependencies for Grafana tool to work

``` bash install_grafana_raspberry_pi5.sh```

4. Access Grafana Web Interface 

http://<IP address of your Raspberry Pi>:3000/login 
- default credentials are admin/admin
- for security reasons change them immediatelly especially if your Raspberry Pi is publicly accessible

![drawing](Grafana-web-interface.png)



