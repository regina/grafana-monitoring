#!/bin/bash
###############################
# Author: Veronika Klauzova
# Description: Installing pre-requisites
###############################

sudo aptitude install chromium-chromedriver -y
mkdir ~/.local
python3 -m venv ~/.local
~/.local/bin/pip3 install requests
~/.local/bin/pip3 install pytest
~/.local/bin/pip3 install selenium 