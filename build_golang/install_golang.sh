#!/bin/bash
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
source /root/.gvm/scripts/gvm
gvm install go1.4
gvm use go1.4
gvm install go1.5
gvm use go1.5
