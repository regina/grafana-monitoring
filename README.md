# Grafana Monitoring

## How to install Grafana on Raspberry Pi 5
1. Clone this Grafana github repository

``` git clone https://github.com/veronikaklauzova/Grafana.git```

2. Change working directory

``` cd Grafana/Install-Grafana```

3. Execute bash script that installs all dependencies for Grafana tool to work

``` bash install_grafana_raspberry_pi5.sh```

4. Access Grafana Web Interface through your favorite web browser ie. Chrome/Firefox/Brave/Safari...

```http://<IP address of your Raspberry Pi>:3000/login```

- default credentials are 
   - username: admin
   - password: admin
- for security reasons change them immediatelly especially if your Raspberry Pi is publicly accessible

<img src="https://github.com/veronikaklauzova/Grafana/blob/main/Install-Grafana/Grafana-web-interface.png" width=80% height=80%>

Alternatively, you can automate the initial logon into Grafana monitoring tool using following Selenium python script:

```~/.local/bin/python3 grafana-auto-login-with-selenium.py```

One liner to install grafana and test auto-login into monitoring tool:

```git clone https://github.com/veronikaklauzova/Grafana.git && bash Grafana/Install-Grafana/install_grafana_raspberry_pi5.sh && ~/.local/bin/python3 Grafana/Install-Grafana/grafana-auto-login-with-selenium.py```


